# 目录说明

查看英文说明 | [View English description](README.md)

在相关目录中存储了编译 FnNAS 所需的文件。

## fnnas-files

此目录存放打包 FnNAS 时所需的相关文件。其中 `common-files` 目录下为通用文件，`platform-files` 目录下为各平台的专用文件，`different-files` 目录下为针对不同设备的差异化文件。

- 所需的系统文件将从 [ophub/amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian/tree/main/build-armbian/armbian-files) 仓库自动下载至 `platform-files` 和 `different-files` 目录。

- 所需的固件将从 [ophub/firmware](https://github.com/ophub/firmware) 仓库自动下载至 `common-files/usr/lib/firmware` 目录。

## kernel

在 `kernel` 目录下创建内核文件存放目录，如 `6.12.41/6.12.41-amlogic`。多个内核需依次创建对应目录并放入相应的内核文件。内核文件可从 [kernel_fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) 仓库下载，也可参考首页的内核编译说明自行编译。若未手动下载内核文件，编译脚本会自动从内核仓库下载。

## u-boot

系统启动引导文件。根据不同版本的内核，在需要使用时将由安装/更新等相关脚本自动处理。所需的 u-boot 文件将从 [ophub/u-boot](https://github.com/ophub/u-boot) 仓库自动下载至 `u-boot` 目录。

## scripts

执行 `renas` 和 `remake` 时会自动安装当前服务器环境所需的依赖包。其他脚本文件用于辅助编译或制作 FnNAS 系统。
