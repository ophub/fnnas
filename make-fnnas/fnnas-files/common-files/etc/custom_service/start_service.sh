#!/bin/bash
#========================================================================================
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
# This file is a part of the remake fnnas
# https://github.com/ophub/fnnas
#
# Function: Custom startup service script, add content as needed.
# Dependent: /etc/rc.local
# Location: /etc/custom_service/start_service.sh
#
# Version: v1.1
#
#========================================================================================

# Custom service log - all script output will be logged here.
custom_log="/tmp/ophub_start_service.log"

# A helper function for logging with timestamp.
log_message() {
    echo "[$(date +"%Y.%m.%d.%H:%M:%S")] $1" >>"${custom_log}"
}

# Start of the script.
log_message "Starting custom services..."

# Suppress verbose kernel messages on console
dmesg -n 1 >/dev/null 2>&1 || true
log_message "Kernel console log level set to 1 (panic only)."

# System identification
# Read the release file to determine the device type.
ophub_release_file="/etc/ophub-release"
FDT_FILE="" # Initialize FDT_FILE to be empty.

[[ -f "${ophub_release_file}" ]] && { FDT_FILE="$(grep -oE 'meson.*dtb' "${ophub_release_file}" || true)"; }
[[ -z "${FDT_FILE}" && -f "/boot/uEnv.txt" ]] && { FDT_FILE="$(grep -E '^FDT=.*\.dtb$' /boot/uEnv.txt | sed -E 's#.*/##' || true)"; }
[[ -z "${FDT_FILE}" && -f "/boot/extlinux/extlinux.conf" ]] && { FDT_FILE="$(grep -E '/dtb/.*\.dtb$' /boot/extlinux/extlinux.conf | sed -E 's#.*/##' || true)"; }
[[ -z "${FDT_FILE}" && -f "/boot/armbianEnv.txt" ]] && { FDT_FILE="$(grep -E '^fdtfile=.*\.dtb$' /boot/armbianEnv.txt | sed -E 's#.*/##' || true)"; }
log_message "Detected FDT file: ${FDT_FILE:-'not found'}"

# Device-specific services

# Add rknpu module to the system module load list
ophub_load_conf="/etc/modules-load.d/ophub-load-list.conf"
[[ -f "${ophub_load_conf}" ]] || touch "${ophub_load_conf}"
if modinfo rknpu >/dev/null 2>&1; then
    grep -q -x "rknpu" "${ophub_load_conf}" 2>/dev/null || echo "rknpu" >>"${ophub_load_conf}"
else
    grep -q -x "rknpu" "${ophub_load_conf}" 2>/dev/null && sed -i '/^rknpu$/d' "${ophub_load_conf}"
fi
log_message "Adjusted rknpu module in system module load list."

# For Tencent Aurora 3Pro (s905x3-b) box: Load Bluetooth module
if [[ "${FDT_FILE}" == "meson-sm1-skyworth-lb2004-a4091.dtb" ]]; then
    grep -q -x "btmtksdio" "${ophub_load_conf}" 2>/dev/null || echo "btmtksdio" >>"${ophub_load_conf}"
    log_message "Loaded btmtksdio module for Tencent Aurora 3Pro."
fi

# For swan1-w28(rk3568) board: USB power and switch control
if [[ "${FDT_FILE}" == "rk3568-swan1-w28.dtb" ]]; then
    (
        # GPIO operations are critical, but we also add error suppression.
        gpioset 0 21=1 >/dev/null 2>&1
        gpioset 3 20=1 >/dev/null 2>&1
        gpioset 4 21=1 >/dev/null 2>&1
        gpioset 4 22=1 >/dev/null 2>&1
    ) &
    log_message "USB power control GPIOs configured for Swan1-W28."
fi

# For smart-am60(rk3588)/orangepi-5b(rk3588s) board: Bluetooth control
if [[ "${FDT_FILE}" =~ ^(rk3588-smart-am60\.dtb|rk3588s-orangepi-5b\.dtb)$ ]]; then
    (
        rfkill block all
        chmod a+x /lib/firmware/ap6276p/brcm_patchram_plus1 >/dev/null 2>&1
        sleep 2
        rfkill unblock all
        /lib/firmware/ap6276p/brcm_patchram_plus1 --enable_hci --no2bytes --use_baudrate_for_download --tosleep 200000 --baudrate 1500000 --patchram /lib/firmware/ap6275p/BCM4362A2.hcd /dev/ttyS9 &
    ) &
    log_message "Bluetooth firmware download started for Smart-AM60/OrangePi-5B."
fi

# For nsy-g16-plus/nsy-g68-plus/bdy-g18-pro board
if [[ "${FDT_FILE}" =~ ^(rk3568-nsy-g16-plus\.dtb|rk3568-nsy-g68-plus\.dtb|rk3568-bdy-g18-pro\.dtb)$ ]]; then
    (
        # Wait for network to be up
        sleep 10

        # Set MTU to 1500 for eth0 and br0
        set_mtu() {
            [[ -d "/sys/class/net/${1}" ]] && ip link set "${1}" mtu 1500 >/dev/null 2>&1
        }
        set_mtu eth0
        set_mtu br0

        # Close offloading features to improve stability
        if [[ -d "/sys/class/net/eth0" ]] && command -v ethtool >/dev/null 2>&1; then
            ethtool -K eth0 tso off gso off gro off tx off rx off >/dev/null 2>&1
        fi
    ) &
    log_message "Network optimizations applied for ${FDT_FILE}."
fi

# General system services

# Restart SSH service
mkdir -p -m0755 /var/run/sshd >/dev/null 2>&1 || true
if [[ -f "/etc/init.d/ssh" ]]; then
    (sleep 5 && /etc/init.d/ssh restart >/dev/null 2>&1) &
    log_message "SSH service restart scheduled."
fi

# Add network performance optimization
if [[ -x "/usr/sbin/balethirq.pl" ]]; then
    (perl /usr/sbin/balethirq.pl >/dev/null 2>&1) &
    log_message "Network optimization service (balethirq.pl) started."
fi

# LED display control, only for Amlogic devices (meson-*) with valid boxid.
openvfd_enable="no"  # yes or no, set to "yes" to enable OpenVFD service.
openvfd_boxid="15"   # Set the boxid according to your device.
openvfd_restart="no" # yes or no, set to "yes" to restart the OpenVFD service.
if [[ "${openvfd_boxid}" != "0" && "${FDT_FILE}" =~ ^meson- ]]; then
    (
        # Start OpenVFD service
        [[ "${openvfd_enable}" == "yes" ]] && fnnas-openvfd "${openvfd_boxid}" >/dev/null 2>&1
        # Some devices require a restart to clear 'BOOT' and related messages
        [[ "${openvfd_restart}" == "yes" ]] && {
            fnnas-openvfd "0" >/dev/null 2>&1
            sleep 3
            fnnas-openvfd "${openvfd_boxid}" >/dev/null 2>&1
        }
        log_message "OpenVFD service started."
    ) &
fi

# For vplus (Allwinner H6) LED color lights
if [[ -x "/usr/bin/rgb-vplus" ]]; then
    rgb-vplus --RedName=RED --GreenName=GREEN --BlueName=BLUE >/dev/null 2>&1 &
    log_message "Vplus RGB LED service started."
fi

# For fan control service
if [[ -x "/usr/bin/pwm-fan.pl" ]]; then
    perl /usr/bin/pwm-fan.pl >/dev/null 2>&1 &
    log_message "Fan control service (pwm-fan.pl) started."
fi

# For OES (A311D) SATA LED status monitoring
if [[ -x "/usr/bin/oes_sata_leds.sh" ]]; then
    /usr/bin/oes_sata_leds.sh >/var/log/oes-sata-leds.log 2>&1 &
    log_message "SATA LED status monitor (oes_sata_leds.sh) started."
fi

# Add HDMI video mode parameter to GRUB configuration if not already present
fnnas_grub_file="/etc/default/grub"
fnnas_add_param="video=HDMI-A-1:1920x1080@60e"
[[ -f "${fnnas_grub_file}" ]] && {
    if grep "^GRUB_CMDLINE_LINUX_DEFAULT" "${fnnas_grub_file}" | grep -q "video=HDMI"; then
        log_message "HDMI video parameter already present in GRUB configuration."
    else
        log_message "Adding HDMI video parameter to GRUB configuration."
        # Backup the original GRUB configuration
        cp "${fnnas_grub_file}" "${fnnas_grub_file}.bak"
        # Append the HDMI video parameter
        sed -i "s/^\(GRUB_CMDLINE_LINUX_DEFAULT=\".*\)\"$/\1 ${fnnas_add_param}\"/" "${fnnas_grub_file}"
        # Update GRUB in the background
        /usr/sbin/update-grub >/dev/null 2>&1 &
        log_message "GRUB configuration updated."
    fi
}

# Finalization
log_message "All custom services processed."
