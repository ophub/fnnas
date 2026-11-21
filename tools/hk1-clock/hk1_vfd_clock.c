/*
 * hk1_vfd_clock.c - High-Performance Front Panel LED Clock Daemon for HK1 RBOX K8
 * Target SoC: Rockchip RK3528
 * Display Controller: FD650 / FD628 2-Wire
 * Pins: GPIO4_A3 (Pin 131, CLK), GPIO4_A2 (Pin 130, DAT)
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/gpio.h>
#include <time.h>
#include <signal.h>
#include <errno.h>

static int chip_fd = -1;
static int line_fd = -1;
static int delay_us = 10;
static int brightness_level = 7; // 1 to 8 (8 = max/0x01, 7 = 0x71)
static volatile int keep_running = 1;

static void sig_handler(int sig) {
    keep_running = 0;
}

static inline void u_sleep(int us) {
    struct timespec ts;
    ts.tv_sec = 0;
    ts.tv_nsec = us * 1000;
    nanosleep(&ts, NULL);
}

static void unexport_pin(int pin) {
    int fd = open("/sys/class/gpio/unexport", O_WRONLY);
    if (fd >= 0) {
        dprintf(fd, "%d", pin);
        close(fd);
    }
}

static int gpio_init(void) {
    // Unexport from sysfs if previously exported
    unexport_pin(131);
    unexport_pin(130);
    u_sleep(20000);

    chip_fd = open("/dev/gpiochip4", O_RDWR);
    if (chip_fd < 0) {
        perror("open /dev/gpiochip4");
        return -1;
    }

    struct gpiohandle_request req;
    memset(&req, 0, sizeof(req));
    req.lines = 2;
    req.lineoffsets[0] = 3; // CLK: GPIO4_A3 (131)
    req.lineoffsets[1] = 2; // DAT: GPIO4_A2 (130)
    req.flags = GPIOHANDLE_REQUEST_OUTPUT | GPIOHANDLE_REQUEST_OPEN_DRAIN | GPIOHANDLE_REQUEST_BIAS_PULL_UP;
    req.default_values[0] = 1;
    req.default_values[1] = 1;
    snprintf(req.consumer_label, sizeof(req.consumer_label), "hk1_clock");

    int ret = ioctl(chip_fd, GPIO_GET_LINEHANDLE_IOCTL, &req);
    if (ret < 0) {
        req.flags = GPIOHANDLE_REQUEST_OUTPUT;
        ret = ioctl(chip_fd, GPIO_GET_LINEHANDLE_IOCTL, &req);
        if (ret < 0) {
            perror("GPIO_GET_LINEHANDLE_IOCTL");
            close(chip_fd);
            chip_fd = -1;
            return -1;
        }
    }

    line_fd = req.fd;
    return 0;
}

static void gpio_close(void) {
    if (line_fd >= 0) { close(line_fd); line_fd = -1; }
    if (chip_fd >= 0) { close(chip_fd); chip_fd = -1; }
}

static inline void set_clk_dat(int clk, int dat) {
    struct gpiohandle_data data;
    data.values[0] = clk;
    data.values[1] = dat;
    ioctl(line_fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, &data);
}

// I2C START
static void i2c_start(void) {
    set_clk_dat(1, 1);
    u_sleep(delay_us);
    set_clk_dat(1, 0);
    u_sleep(delay_us);
    set_clk_dat(0, 0);
    u_sleep(delay_us);
}

// I2C STOP
static void i2c_stop(void) {
    set_clk_dat(0, 0);
    u_sleep(delay_us);
    set_clk_dat(1, 0);
    u_sleep(delay_us);
    set_clk_dat(1, 1);
    u_sleep(delay_us * 2);
}

// I2C Byte write (MSB first, with 9th clock pulse)
static void i2c_send_byte(unsigned char byte) {
    for (int i = 7; i >= 0; i--) {
        int bit = (byte >> i) & 1;
        set_clk_dat(0, bit);
        u_sleep(delay_us);
        set_clk_dat(1, bit);
        u_sleep(delay_us);
        set_clk_dat(0, bit);
        u_sleep(delay_us);
    }
    // 9th clock pulse (ACK)
    set_clk_dat(0, 1);
    u_sleep(delay_us);
    set_clk_dat(1, 1);
    u_sleep(delay_us);
    set_clk_dat(0, 1);
    u_sleep(delay_us);
}

// Send complete address-data pair
static void send_cmd(unsigned char addr, unsigned char data) {
    i2c_start();
    i2c_send_byte(addr);
    i2c_send_byte(data);
    i2c_stop();
}

// 7-segment digit table: 0..9
static const unsigned char seg_digits[10] = {
    0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F
};

static unsigned char get_cmd_byte(int level) {
    // FD650 system command:
    // Level 1: 0x11, Level 2: 0x21, Level 3: 0x31, Level 4: 0x41
    // Level 5: 0x51, Level 6: 0x61, Level 7: 0x71, Level 8: 0x01
    switch (level) {
        case 1: return 0x11;
        case 2: return 0x21;
        case 3: return 0x31;
        case 4: return 0x41;
        case 5: return 0x51;
        case 6: return 0x61;
        case 7: return 0x71;
        case 8: return 0x01;
        default: return 0x71;
    }
}

static void update_clock(int show_colon) {
    time_t rawtime;
    struct tm *info;
    time(&rawtime);
    info = localtime(&rawtime);

    int h1 = info->tm_hour / 10;
    int h2 = info->tm_hour % 10;
    int m1 = info->tm_min / 10;
    int m2 = info->tm_min % 10;

    unsigned char cmd = get_cmd_byte(brightness_level);
    unsigned char d1 = seg_digits[h1];
    unsigned char d2 = seg_digits[h2] | (show_colon ? 0x80 : 0x00);
    unsigned char d3 = seg_digits[m1];
    unsigned char d4 = seg_digits[m2];

    send_cmd(0x48, cmd);
    send_cmd(0x68, d1);
    send_cmd(0x6A, d2);
    send_cmd(0x6C, d3);
    send_cmd(0x6E, d4);
}

int main(int argc, char **argv) {
    signal(SIGINT, sig_handler);
    signal(SIGTERM, sig_handler);

    if (gpio_init() < 0) {
        fprintf(stderr, "Failed to initialize GPIO pins!\n");
        return 1;
    }

    if (argc > 1 && strcmp(argv[1], "--once") == 0) {
        update_clock(1);
        gpio_close();
        return 0;
    }

    int colon = 1;
    while (keep_running) {
        update_clock(colon);
        colon ^= 1;
        sleep(1);
    }

    gpio_close();
    return 0;
}
