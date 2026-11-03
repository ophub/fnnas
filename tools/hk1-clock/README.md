# HK1 RBOX K8 Front Panel VFD Clock Daemon

This directory provides the userspace clock daemon and driver for the **HK1 RBOX K8** front-panel 4-digit 7-segment LED display.

## Hardware Specifications

- **Controller**: FD650 / FD628 2-Wire Serial Display Controller
- **Interface**: Bit-banged 2-Wire via Linux GPIO Character Device (`/dev/gpiochip4`)
- **Clock Pin (CLK)**: `GPIO4_A3` (Line 3, Pin 131)
- **Data Pin (DAT)**: `GPIO4_A2` (Line 2, Pin 130)
- **Features**: Real-time 24h clock, blinking colon (`:`), WiFi indicator symbol, brightness control, and low-overhead sleep timing.

## Build and Install

To build and install the daemon automatically:

```bash
sudo bash install.sh
```

Or manually:

```bash
make
sudo cp hk1-clock /usr/local/bin/
sudo cp hk1-clock.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now hk1-clock.service
```

## Service Status

Check service status with:

```bash
systemctl status hk1-clock.service
```
