#!/bin/bash
#====================================================================================
#
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
# This file is a part of the remake fnnas
# https://github.com/ophub/fnnas
#
# Description: Run inside fnnas chroot. Installs tools, generates uInitrd.
# Copyright (C) 2025~ https://fnnas.com
# Copyright (C) 2026~ https://github.com/ophub/fnnas
#
#================================== Functions list ==================================
#
# error_msg           : Output error message
# prepare_env         : Fix permissions and create missing directories
# check_dependencies  : Install the required dependencies
# install_debs        : Install additional deb packages
# add_scripts         : Setup u-boot hooks and detect version
# generate_uinitrd    : Run update-initramfs
#


# 1. 创建2G大小的swap文件（U盘根分区，空间不足可改1G） 给1G电视盒子做的，增加SWAP，就不会那么卡了
#btrfs subvolume create /swap
#chattr +C /swap
#cd /swap
#dd if=/dev/zero of=/swap/swapfile bs=1M count=2048

# 2. 限制swap文件权限（仅root可访问，避免安全风险）
#chmod 600 /swap/swapfile

# 3. 格式化swap文件
#mkswap /swap/swapfile

# 4. 临时启用swap（当前chroot会话生效）
#swapon /swap/swapfile

# 5. 写入/etc/fstab，开机自动挂载（永久生效）
#echo '/swap/swapfile none swap sw 0 0' >> /etc/fstab

# 6. 优化swap策略（1G内存建议swappiness=20，减少内存换出）
#echo 'vm.swappiness=20' >> /etc/sysctl.conf
#sysctl -p /etc/sysctl.conf


#========================== Set make environment variables ==========================

# Receive arguments
debs_platform="${1}"

# Set environment variables
chroot_arch_info="$(arch)"
initramfs_conf="/etc/initramfs-tools/update-initramfs.conf"
kernel_version_output="/var/tmp/kernel_version_output"

# Set font color
STEPS="[\033[95m STEPS \033[0m]"
INFO="[\033[94m INFO \033[0m]"
SUCCESS="[\033[92m SUCCESS \033[0m]"
WARNING="[\033[93m WARNING \033[0m]"
ERROR="[\033[91m ERROR \033[0m]"

#==========================================================================

# Error message
error_msg() {
    echo -e " ${ERROR} ${1}"
    exit 1
}

# Fix permissions and create missing directories FIRST
prepare_env() {
    echo -e "${STEPS} Preparing internal environment..."

    # Avoid locale warnings
    export LC_ALL=C

    # Fix potentially missing log directories which cause apt/dpkg to fail
    [[ -d "/var/tmp" ]] || mkdir -p "/var/tmp"
    chmod 1777 "/var/tmp"

    [[ -d "/var/log/apt" ]] || mkdir -p "/var/log/apt"
    [[ -d "/var/lib/dpkg" ]] || mkdir -p "/var/lib/dpkg"

    # Touch dpkg log to avoid "no such file" warning/error
    touch /var/log/dpkg.log
}

# Install the required dependencies
check_dependencies() {
    echo -e "${STEPS} Checking dependencies..."
    export DEBIAN_FRONTEND=noninteractive

    # Define necessary packages
    necessary_packages=("xz-utils" "zstd" "gzip" "zip" "tar" "git" "u-boot-tools" "initramfs-tools")

    # Fix potential apt lock or list issues in chroot
    mkdir -p /var/lib/apt/lists/partial

    echo -e "${INFO} Updating package lists..."
    # Allow update to fail (e.g. network issues), try installing anyway
    apt-get update -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false >/dev/null 2>&1 ||
        echo -e "${WARNING} apt-get update failed, attempting installation regardless..."

    echo -e "${INFO} Installing: ${necessary_packages[*]}"
    apt-get install -y "${necessary_packages[@]}" || error_msg "Failed to install required dependencies."

    echo -e "${INFO} Cleaning up unnecessary packages..."
    apt-get --purge autoremove -y
    apt-get clean -y
    rm -rf /var/cache/man/*
}

install_debs() {
    echo -e "${STEPS} Installing additional DEBs for platform: [ ${debs_platform} ]"

    # Define debs path (copied by host script to /root)
    debs_path="/root"

    # Install all DEBs in the directory
    if ls ${debs_path}/*.deb 1>/dev/null 2>&1; then
        echo -e "${INFO} Cleaning up old kernel files in /boot to avoid FAT32 errors..."
        rm -f /boot/vmlinuz* /boot/System.map* /boot/config* /boot/initrd* /boot/uInitrd*

        echo -e "${INFO} Installing .deb files from [ ${debs_path} ]..."
        # Using --force-all to ensure kernel replacement works even if versions conflict
        dpkg -i --force-all ${debs_path}/*.deb || error_msg "Failed to install .deb packages."

        # Locate the latest installed kernel DTB directory
        latest_dtb_dir="$(ls -d /usr/lib/linux-image-* 2>/dev/null | sort -V | tail -n 1)"
        [[ -z "${latest_dtb_dir}" ]] && error_msg "Cannot find installed kernel DTB directory."

        # Copy DTB files to /boot/dtb/<platform>/
        target_dtb_dir="/boot/dtb/${debs_platform}"
        mkdir -p "${target_dtb_dir}"

        echo -e "${INFO} Copying DTB files to [ ${target_dtb_dir} ]..."
        cp -rf "${latest_dtb_dir}/${debs_platform}"/* "${target_dtb_dir}/"

        echo -e "${SUCCESS} Kernel packages installed."
    else
        echo -e "${WARNING} Install flag set but no .deb files found in ${debs_path}."
    fi
}

add_scripts() {
    echo -e "${STEPS} Adding hooks and fixing permissions..."

    # Write u-boot hook script
    echo -e "${INFO} Creating /etc/initramfs/post-update.d/99-uboot hook..."
    mkdir -p /etc/initramfs/post-update.d

    # Create hook script to generate uInitrd
    cat >/etc/initramfs/post-update.d/99-uboot <<'HOOK'
#!/bin/bash
# Generate uInitrd
# $1 = kernel version

tempname="/boot/uInitrd-$1"
echo "update-initramfs: fnnas: Converting to u-boot format: ${tempname}..." >&2
mkimage -A arm64 -O linux -T ramdisk -C none -n uInitrd -d "$2" "$tempname" >/dev/null 2>&1
ln -sfv $(basename "$tempname") /boot/uInitrd >/dev/null 2>&1 || cp -fv "$tempname" /boot/uInitrd

echo "update-initramfs: fnnas: done." >&2
exit 0

HOOK
    chmod +x /etc/initramfs/post-update.d/99-uboot

    # Detect kernel version
    echo -e "${STEPS} Detecting kernel version..."

    # Take the first config file found (After install_debs, this will be the NEW version)
    kernel_version="$(ls /boot/config-* 2>/dev/null | head -n1 | awk -F'config-' '{print $2}')"
    [[ -z "${kernel_version}" ]] && error_msg "Cannot detect the kernel version (no /boot/config-* found)."
    # Save to file for host script to read
    echo "kernel_version='${kernel_version}'" >"${kernel_version_output}"
    echo -e "${INFO} Detected kernel version: [ ${kernel_version} ]"

    # Detect platform name (based on DTB folder)
    platform_name="$(ls -d /boot/dtb/*/ 2>/dev/null | head -n1 | xargs basename)"
    # Override if installed via DEBs
    [[ "${debs_platform}" =~ ^(amlogic|allwinner|rockchip)$ ]] && platform_name="${debs_platform}"
    [[ -z "${platform_name}" ]] && error_msg "Cannot detect platform name from dtb folder."
    # Save to file for host script to read
    echo "platform_name='${platform_name}'" >>"${kernel_version_output}"
    echo -e "${INFO} Detected platform name: [ ${platform_name} ]"
}

# Generate uInitrd
generate_uinitrd() {
    cd /boot
    echo -e "${STEPS} Generating initrd and uInitrd files..."

    # Enable update_initramfs in config if present
    [[ -f "${initramfs_conf}" ]] && sed -i "s|^update_initramfs=.*|update_initramfs=yes|g" "${initramfs_conf}"

    # Generate initrd (hook will generate uInitrd)
    echo -e "${INFO} Running update-initramfs for ${kernel_version}..."
    update-initramfs -c -k "${kernel_version}"

    # Check for uInitrd-VERSION
    if [[ -f "uInitrd-${kernel_version}" ]]; then
        echo -e "${SUCCESS} uInitrd generated successfully."
        sync && sleep 3
    else
        error_msg "Failed to generate uInitrd."
    fi

    echo -e "${INFO} Boot directory listing: "
    ls -hl *"${kernel_version}" 2>/dev/null
}

#================================== Main Execution ==================================

echo -e "${INFO} Current system architecture: [ ${chroot_arch_info} ]"

# 1. Fix environment (directories/logs) FIRST
prepare_env
# 2. Install dependencies (Need dpkg/apt working)
check_dependencies
# 3. Install DEBs if specified (This replaces the kernel)
[[ "${debs_platform}" =~ ^(amlogic|allwinner|rockchip)$ ]] && install_debs
# 4. Setup hooks and detect info (Detect the NEW kernel version)
add_scripts
# 5. Generate images
generate_uinitrd

echo -e "${SUCCESS} Chroot task finished. Exiting..."
exit 0
