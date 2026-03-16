# Directory Description

View Chinese description | [查看中文说明](README.cn.md)

The relevant directories contain files required for building FnNAS.

## fnnas-files

This directory contains files used during FnNAS packaging. The `common-files` directory holds common files, the `platform-files` directory holds platform-specific files, and the `different-files` directory holds device-specific differential files.

- Required system files are automatically downloaded from the [ophub/amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian/tree/main/build-armbian/armbian-files) repository into the `platform-files` and `different-files` directories.

- Required firmware is automatically downloaded from the [ophub/firmware](https://github.com/ophub/firmware) repository into the `common-files/usr/lib/firmware` directory.

## kernel

Create kernel file storage directories under the `kernel` directory, such as `6.12.41/6.12.41-amlogic`. For multiple kernels, create corresponding directories sequentially and place the respective kernel files in them. Kernel files can be downloaded from the [kernel_fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) repository, or you can compile them yourself by referring to the kernel compilation instructions on the homepage. If kernel files are not downloaded manually, the build script will automatically download them from the kernel repository during compilation.

## u-boot

System bootloader files. Depending on the kernel version, these are handled automatically by installation/update scripts when needed. Required u-boot files are automatically downloaded from the [ophub/u-boot](https://github.com/ophub/u-boot) repository into the `u-boot` directory.

## scripts

Dependency packages required for the current server environment are automatically installed when executing `renas` and `remake`. Other script files are used to assist in compiling or building the FnNAS system.
