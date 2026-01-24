<div align="center">
    <img src="https://github.com/user-attachments/assets/c48d1b9c-e1d9-43a6-b5a5-69c0bdb2ff3b" alt="FnNAS" />
</div>
<br />

查看英文说明 | [View English description](README.md)

[FnNAS](https://fnnas.com/) 是一款基于最新 Linux 内核（Debian 发行版）深度定制的操作系统。它拥有强大的硬件兼容性，完美支持主流 x86 及 Arm64 设备，允许用户自由组装 NAS 并灵活扩展外部存储。现在，你可以轻松将电视盒子的 Android TV 系统替换为 FnNAS，将其变身为一台功能强大的私有数据存储服务器。

本项目得益于众多 [贡献者](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md) 的辛勤付出，并在 FnNAS 官方技术大佬的指导下，专门为 `Amlogic`、`Rockchip` 和 `Allwinner` 架构的电视盒子构建了适配 Arm64 设备的 FnNAS 系统。构建版本完整继承了官方系统，完美支持写入 eMMC 启动及内核在线更新等功能。最新的固件请前往 [Releases](https://github.com/ophub/fnnas/releases) 页面下载。欢迎大家 `Fork` 本项目进行个性化定制。如果您觉得本项目对您有帮助，请点击仓库右上角的 `Star` ⭐ 以示支持！

## FnNAS 固件默认信息

| 系统名称        | 默认账号 | 默认密码  | SSH 端口 | IP 地址 |
| -------------- | ------- | ------- | ------- | ------- |
| 🛜 [FnNAS.OS](https://github.com/ophub/fnnas/releases) | 自定义 | 自定义 | 22 | 从路由器获取 IP |
| 🐋 [FnNAS.Docker](https://hub.docker.com/u/ophub) | 自定义 | 自定义 | 22 | 宿主机 IP |


## 支持的设备列表

⬆️ 各平台（晶晨/瑞芯微/全志）型号均按 SoC 性能由高至低排列。

| SoC  | [设备](https://github.com/ophub/fnnas/releases) | [内核](https://github.com/ophub/fnnas) |
| ---- | ---- | ---- |
| a311d | [Khadas-VIM3](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/99), [WXY-OES](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2666) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s922x | [Beelink-GT-King](https://github.com/ophub/amlogic-s9xxx-armbian/issues/370), [Beelink-GT-King-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/707), [Ugoos-AM6-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/464), [ODROID-N2](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/201), [X88-King](https://github.com/ophub/amlogic-s9xxx-armbian/issues/988), [Ali-CT2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1150), [WXY-OES-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3029) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905x3 | [X96-Max+](https://github.com/ophub/amlogic-s9xxx-armbian/issues/351), [HK1-Box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/414), [Vontar-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1006), [H96-Max-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1250), [Ugoos-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/782), [TX3(QZ)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/644), [TX3(BZ)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1077), [X96-Air](https://github.com/ophub/amlogic-s9xxx-armbian/issues/366), [X96-Max+_A100](https://github.com/ophub/amlogic-s9xxx-armbian/issues/779), [A95X-F3-Air](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2282), [Tencent-Aurora-3Pro(s905x3-b)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/506), [X96-Max+Q1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/788), [X96-Max+100W](https://github.com/ophub/amlogic-s9xxx-armbian/issues/909), [X96-Max+_2101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1086), [Infinity-B32](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1181), [Whale](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1166), [X88-Pro-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621), [X99-Max-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621), [Transpeed-X3-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905x2 | [X96Max-4G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/453), [X96Max-2G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/95), [MECOOL-KM3-4G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/79), [Tanix-Tx5-Max](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/351), [A95X-F2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/851), [HG680-FJ](https://github.com/ophub/amlogic-s9xxx-armbian/pull/3089) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905l3a | [E900V22C/D](https://github.com/Calmact/e900v22c), [CM311-1a-YST](https://github.com/ophub/amlogic-s9xxx-armbian/issues/517), [M401A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/732), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/517), [UNT403A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/970), [UNT413A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/970), [ZTE-B863AV3.2-M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/741), [CM311-1a-CH](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1508), [IP112H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1520), [B863AV3.1-M2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2292) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905l3b | [CM201-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2209), [CM211-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1180), [CM311-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1268), [E900V21D](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2447), [E900V22D](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1256), [E900V21E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1514), [E900V22E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/939), [M302A/M304A](https://github.com/ophub/amlogic-s9xxx-armbian/pull/615), [Hisense-IP103H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1154), [TY1608](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1332), [TY1608](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1568), [MGV2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1613), [B860AV-2.1M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1598), [UNT403A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1712), [RG020ET-CA](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1860), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3272) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905l3 | [CM211-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1318), [CM311-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/763), [HG680-LC](https://github.com/ophub/amlogic-s9xxx-armbian/issues/978), [M401A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/921#issuecomment-1453143251), [UNT400G1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1277), [UNT400G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2625), [UNT402A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1481), [ZXV10-BV310](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1512), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1817), [ZXV10-B860AV3.2-M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2012), [ZXV10-B860AV2.1-U](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2273), [E900V22D-2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2058), [CM201-1-6-YS](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2539), [IP108H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2539), [M301A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3055) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s912 | [Tanix-TX8-Max](https://github.com/ophub/amlogic-s9xxx-armbian/issues/500), [Tanix-TX9-Pro(3G)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/315), [Tanix-TX9-Pro(2G)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/740), [Tanix-TX92](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72#issuecomment-1012790770), [Tanix-TX9S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3282), [Nexbox-A1](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/260), [Nexbox-A95X-A2](https://www.cafago.com/en/p-v2979eu-2g.html),  [A95X](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/260), [H96-Pro-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72#issuecomment-1013071513), [VORKE-Z6-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72), [Mecool-M8S-PRO-L](https://github.com/ophub/amlogic-s9xxx-armbian/issues/158), [Vontar-X92](https://github.com/ophub/amlogic-s9xxx-armbian/issues/525), [T95Z-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/668), [Octopus-Planet](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1020), [Phicomm-T1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/522), [TX3-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1882), [OneCloudPro-V1.1_V1.2](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2241) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905d | [MECOOL-KI-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/59), [Phicomm-N1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/925), [SML-5442TW](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/451) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905x | [HG680P](https://github.com/ophub/amlogic-s9xxx-armbian/issues/262), [B860H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/60), [TBee-Box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/98), [T95](https://github.com/ophub/amlogic-s9xxx-armbian/issues/285), [TX9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/645), [XiaoMI-3S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1405), [X96](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1480), [Nexbox-a95x](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1714), [BTV9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3256) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905mb | [S65](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1644) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905l | [UNT402A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1481), [M201-S](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/444), [MiBox-4](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2101), [MiBox-4C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1826), [MG101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1912), [E900V21C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2341), [IP108H-53u1m](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2357), [Tencent-Aurora-1s](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2465), [B860AV2.1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2491), [B860AV2.1U](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2499), [HM201](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2585) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905l2 | [MGV2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/648), [MGV2000-K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1839), [MGV3000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/921), [Wojia-TV-IPBS9505](https://github.com/ophub/amlogic-s9xxx-armbian/issues/648), [M301A](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/405), [E900v21E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1278), [e900v21d](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2127), [CM201-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2188), [IP108H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2598), [MGV2000-CW](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2616) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905lb | [Q96-mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/734), [BesTV-R3300L](https://github.com/ophub/amlogic-s9xxx-armbian/pull/993), [SumaVision-Q7](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1190), [MG101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1570), [s65](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2128), [IPBS9505](https://github.com/ophub/amlogic-s9xxx-armbian/pull/993#issuecomment-2276804591) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905w | [X96-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/621), [TX3-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1062), [W95](https://github.com/ophub/amlogic-s9xxx-armbian/issues/570), [X96W/FunTV](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1044), [MXQ-Pro-4K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1140), [MeCool-m8s-pro-W](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3245) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| s905 | [Beelink-Mini-MX-2G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/127), [Sunvell-T95M](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/337), [MXQ-Pro+4K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/715), [SumaVision-Q5](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1175) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3588(s) | [Radxa-Rock5B](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1240), [Radxa-Rock5C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [Orange-Pi-5-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2400), [Beelink-IPC-R](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/415), [HLink-H88K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H88K-V3](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [NanoPC-T6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2453), [Smart-Am60](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2817), [DC-A588](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2988), [Orangepi-5B](https://github.com/ophub/amlogic-s9xxx-armbian/pull/3052), [CM3588-NAS](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3306) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3576 | [NanoPi-m5](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3207) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3399 | [EAIDK-610](https://github.com/ophub/amlogic-s9xxx-armbian/pull/991), [King3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1080), [TN3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1094), [Kylin3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1132), [ZCube1-Max](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1247), [CRRC](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1280), [SMART-AM40](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1317), [SW799](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1326), [ZYSJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1380), [DG-3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1492), [DLFR100](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1522), [Emb3531](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1549), [Leez-p710](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1609), [tvi3315a](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1687), [xiaobao](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1698), [Fine3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1790), [Firefly-RK3399](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/491), [LX-R3S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2026), [Hugsun-x99](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2050), [Tb-ls3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2146), [Hisense-hs530r](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/572), [Tpm312](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2403), [ZK-rk39a](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2446), [YSKJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2673), [Fmx1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2691), [Sv-33a6x](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/748), [AIO-3399b](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3185), [TaraM](https://github.com/ophub/u-boot/pull/28) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3568 | [FastRhino-R66S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1061), [FastRhino-R68S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/774), [Radxa-E25](https://wiki.radxa.com/Rock3/CM/CM3I/E25), [NanoPi-R5S](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [NanoPi-R5C](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [HLink-H66K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H68K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H69K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [Seewo-sv21](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2017), [Mrkaio-m68s](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2155), [Swan1-w28](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2407), [Ruisen-box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2508), [DG-TN3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2661), [Alark35-3500](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2911), [MMBox-Anas3035](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2995), [Wocyber-A3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2978), [Photonicat](https://github.com/ophub/amlogic-s9xxx-openwrt/pull/827), [NSY-G16-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [NSY-G68-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [BDY-G18-Pro](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/847), [Gzpeite-P01](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3221), [LZ-K3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3304) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3566 | [Panther-X2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1319), [JP-TvBox](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1867), [LCKFB-Taishan-Pi](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2538), [WXY-OEC-turbo-4g](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2736), [Station-M2](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/744), [Orange-Pi-3B](https://github.com/ophub/fnnas/issues/261) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3528 | [HLink-H28K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1726), [Radxa-E20C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [H96-Max-M2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2404) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3328 | [BeikeYun](https://github.com/ophub/amlogic-s9xxx-armbian/issues/852), [Chainedbox-L1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1680), [Station-M1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Bqeel-MVR9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Renegade/Firefly](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1861) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3318 | [RX3318-Box](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2129) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| h6 | [Vplus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1100), [Tanix-TX6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1120), [TQC-A01](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1638) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| h618 | [OrangePi-Zero3](https://github.com/ophub/fnnas/issues/158) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |

> [!TIP]
> 目前 [s905 的盒子](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1173)只能在 `TF/SD/USB` 中使用，其他型号的盒子支持写入 `eMMC` 中使用。更多信息请查阅 [✅支持的设备列表说明](make-fnnas/fnnas-files/common-files/etc/model_database.conf)。可以参考说明文档中 12.15 章节的方法[添加新的支持设备](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.cn.md#1215-如何添加新的支持设备)。

## 安装及升级 FnNAS 的相关说明

选择和你的盒子型号对应的 FnNAS 系统，不同设备的使用方法查看对应的说明。

- ### 安装 FnNAS 到 eMMC

1. `Rockchip` 平台的安装方法请查看说明文档中的 [第 8 章节](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.cn.md) 的介绍，和 Armbian 的安装方法相同。

2. `Amlogic` 和 `Allwinner` 平台，使用 [Rufus](https://rufus.ie/) 或者 [balenaEtcher](https://www.balena.io/etcher/) 等工具将系统写入 USB 里，然后把写好系统的 USB 插入盒子。到设备接入的路由器里查找新上线的名称是 debian 的设备，查看其 IP 地址（例如：`192.168.1.15`），然后通过浏览器访问 http://192.168.1.15:5666 进入飞牛账号创建界面。创建自定义账号后登录飞牛系统，在 `系统设置` → `SSH` 里开启 SSH 功能，然后使用 SSH 连接工具进入系统终端，输入命令：

```shell
sudo -i
fnnas-install
```

| 可选参数  | 默认值   | 选项     | 说明            |
| -------  | ------- | ------  | -------------- |
| -m       | no      | yes/no  | 使用主线 u-boot  |
| -a       | no      | yes/no  | 使用 [ampart](https://github.com/7Ji/ampart) 分区表调整工具 |
| -l       | no      | yes/no  | 显示全部设备列表  |

举例：`fnnas-install -m yes -a no`

> [!TIP]
> 分区选项说明：当磁盘可用空间大于 16GiB 时，支持自定义系统根分区大小（默认 16GiB）。
>
> 在系统重装过程中，脚本会自动检测 eMMC 上的分区结构。若发现存在个人数据分区（P3），分区菜单将激活选项 `3`。选择该选项可严格保留当前分区表布局，从而确保 P3 分区内的数据不被覆盖。 系统安装完毕后，您可以在飞牛系统的 `存储空间管理` 界面中直接挂载并使用该分区。

| 选项     | 说明   |
| :-----: | :----- |
| **1**   | 系统分区(Rootfs) 限制为 **16GiB**。             |
| **2**   | **[默认]** 系统分区扩容至全盘 (**100%**)。       |
| **3**   | **继承当前系统分区大小** (保留 P3 分区的个人数据)。 |
| **≥16** | 输入数字 (**GiB**) 以自定义系统分区大小。         |

- ### 更新 FnNAS 内核

登录 FnNAS 系统 SSH 终端 → 输入命令：
```shell
sudo -i
fnnas-update
```

| 可选参数  | 默认值        | 选项           | 说明                              |
| -------- | ------------ | ------------- | -------------------------------- |
| -r       | ophub/fnnas | `<owner>/<repo>` | 设置从 github.com 下载内核的仓库  |
| -k       | 最新版        | 内核版本       | 设置[内核版本](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas)  |
| -b       | yes          | yes/no        | 更新内核时自动备份当前系统使用的内核    |
| -m       | no           | yes/no        | 使用主线 u-boot                    |
| -s       | 无           | 无/磁盘名称     | [SOS] 恢复 eMMC/NVMe/sdX 等磁盘中的系统内核 |
| -h       | 无           | 无             | 查看使用帮助                       |

举例: `fnnas-update -k 6.12.63`

通过 `-k` 参数指定内核版本号时，可以准确指定具体版本号，例如：`fnnas-update -k 6.12.63`，也可以模糊指定到内核系列，例如：`fnnas-update -k 6.12`，当模糊指定时将自动使用指定系列的最新版本。

更新内核时会自动备份当前系统使用的内核，存储路径在 `/ddbr/backup` 目录里，保留最近使用过的 3 个版本的内核，如果新安装的内核不稳定，可以随时恢复回备份的内核。如果更新内核失败导致系统无法启动，可以通过 `fnnas-update -s` 来恢复系统内核。

- ### 为 FnNAS 创建 swap

如果你在使用 `docker` 等内存占用较大的应用时，觉得当前盒子的内存不够使用，可以创建 `swap` 虚拟内存分区，将磁盘空间的一定容量虚拟成内存来使用。下面命令输入参数的单位是 `GB`，默认为 `1`。

登录 FnNAS 系统 SSH 终端 → 输入命令：

```shell
fnnas-swap 1
```

- ### 控制 LED 显示

登录 FnNAS 系统 SSH 终端 → 输入命令：

```shell
fnnas-openvfd
```

根据 [LED 屏显示控制说明](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/led_screen_display_control.md) 进行调试。

- ### 备份/还原 eMMC 原系统

支持在 `TF/SD/USB` 中对盒子的 `eMMC` 分区进行备份/恢复。建议您在全新的盒子里安装 FnNAS 系统前，先对当前盒子自带的安卓 TV 系统进行备份，以便日后在恢复电视系统等情况下使用。

请从 `TF/SD/USB` 启动 FnNAS 系统 → 输入命令：

```shell
fnnas-ddbr
```

根据提示输入 `b` 进行系统备份，输入 `r` 进行系统恢复。

> [!IMPORTANT]
> 除此之外也可以通过线刷的方法，将安卓系统刷入 eMMC 中，安卓系统的下载镜像可在 [Tools](https://github.com/ophub/kernel/releases/tag/tools) 中查找。

- ### 同步最新服务脚本

将本地系统中的全部服务脚本更新到最新版本，可以登录 FnNAS 系统 SSH 终端 → 输入命令：

```shell
fnnas-sync
```

## 本地化打包

1. 克隆仓库到本地 `git clone --depth 1 https://github.com/ophub/fnnas.git`

2. 安装必要的软件包（如 Ubuntu 24.04）

```shell
sudo apt-get update -y
sudo apt-get full-upgrade -y
# For Ubuntu-24.04
sudo apt-get install -y $(cat make-fnnas/script/ubuntu2404-make-fnnas-depends)
```

3. 进入 `~/fnnas` 根目录，在根目录下创建文件夹 `fnnas-arm64` ，并上传 FnNAS 镜像文件 ( 如：`fnos_arm_1.0.0_258.img` ) 到 `~/fnnas/fnnas-arm64` 目录里。

4. 进入 `~/fnnas` 根目录，然后运行 `sudo ./renas -b s905x3 -k 6.12.63` 命令即可生成指定 board 的 FnNAS 镜像文件。生成的文件保存在 `~/fnnas/out` 目录里。

- ### 本地化打包镜像参数说明

| 参数  | 含义       | 说明        |
| ---- | ---------- | ---------- |
| -b   | Board      | 指定需要编译的设备代号。例如，`-b s905x3` 表示编译代号为 s905x3 的设备，多个设备可用下划线连接，如 `-b s905x3_s905d`。特殊值：`all` 表示编译全部设备，`first50` 表示编译设备库中的前 50 个，`range50_100` 表示从第 51 个开始至第 100 个，`range100_150` 表示从第 101 个开始至第 150 个，`last20` 表示最后的 20 个。设备代号列表详见 [model_database.conf](make-fnnas/fnnas-files/common-files/etc/model_database.conf) 中的 `BOARD` 配置项。默认值为 `all` |
| -r   | KernelRepo | 指定 github.com 内核仓库的 `<owner>/<repo>`。默认值：`ophub/fnnas` |
| -k   | Kernel     | 指定 [kernel](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) 名称，如 `-k 6.12.63` 。多个内核使用 `_` 进行连接，如 `-k 6.12.63_6.18.3` 。 |
| -a   | AutoKernel | 设置是否自动采用同系列最新版本内核。当为 `true` 时，将自动在内核库中查找在 `-k` 中指定的内核如 6.12.63 的同系列是否有更新的版本，如有 6.12.63 之后的最新版本时，将自动更换为最新版。设置为 `false` 时将编译指定版本内核。默认值：`true` |
| -s   | Size       | 对系统的镜像分区大小（单位：MiB）进行设置，只设置 `ROOTFS` 分区大小时可以只指定一个数值，例如： `-s 6144`。需要同时设置 `BOOTFS` 和 `ROOTFS` 分区大小时，使用 / 对两个数值进行连接，例如： `-s 512/6144`。默认值：`512/6144` |
| -e   | RootfsExpand | 设置系统根分区自动扩容大小（单位：GiB）。默认值：`16` |
| -n   | BuilderName | 设置 FnNAS 系统构建者签名。设置签名时请勿包含空格。默认值：`无` |

- `sudo ./renas` : 使用默认配置，对全部型号的电视盒子进行打包。
- `sudo ./renas -b s905x3 -k 6.12.63` : 推荐使用. 使用默认配置进行相关内核打包。
- `sudo ./renas -b s905x3 -k 6.12.y` : 使用默认配置进行相关内核打包，内核使用 6.12.y 系列的最新版。
- `sudo ./renas -b s905x3_s905d -k 6.12.63_6.18.3` : 使用默认配置，进行多个内核同时打包。使用 `_` 进行多内核参数连接。
- `sudo ./renas -b s905x3 -k 6.12.63 -s 6144` : 使用默认配置，指定一个内核，一个型号进行打包，系统大小设定为 `6144` MiB。
- `sudo ./renas -b s905x3_s905d`  使用默认配置，对多个型号的电视盒子进行全部内核打包, 使用 `_` 进行多型号连接。
- `sudo ./renas -k 6.12.63_6.18.3` : 使用默认配置，指定多个内核，进行全部型号电视盒子进行打包, 内核包使用 `_` 进行连接。
- `sudo ./renas -k 6.12.63_6.18.3 -a true` : 使用默认配置，指定多个内核，进行全部型号电视盒子进行打包, 内核包使用 `_` 进行连接。自动升级到同系列最新内核。
- `sudo ./renas -b s905x3 -e 32` : 使用默认配置，指定打包 `s905x3` 的固件，系统根分区自动扩容大小设定为 `32` GiB。

## 使用 GitHub Actions 进行镜像编译

1. 关于 Workflows 文件的配置在 [.github/workflows](.github/workflows) 文件里。

2. 在 [Actions](https://github.com/ophub/fnnas/actions) 页面里选择 ***`Build FnNAS Image`*** 即可使用 [build-fnnas-image.yml](.github/workflows/build-fnnas-image.yml) 进行编译。点击 ***`Run workflow`*** 按钮即可编译。在选项面板里，可以在 `Custom fnnas image download url` 里设置 FnNAS 镜像文件的路径，例如： `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz` 等网络下载地址，如果不设置，将默认使用 [fnnas_base_image](https://github.com/ophub/fnnas/releases/tag/fnnas_base_image) 里保存的官方镜像进行编译。

```yaml
- name: Build FnNAS Image
  uses: ophub/fnnas@main
  with:
    build_target: fnnas
    fnnas_path: fnnas/*.img.xz
    fnnas_board: s905d_s905x3_s922x_s905x
    fnnas_kernel: 6.12.y
    rootfs_expand: 16
```

- ### GitHub Actions 制作 fnnas 镜像参数说明

相关参数与`本地打包命令`相对应，请参考上面的说明。

| 参数              | 默认值         | 说明                                             |
|------------------|---------------|--------------------------------------------------|
| fnnas_path       | 无            | 设置官方 Arm64 原版 FnNAS 镜像文件的路径，支持使用当前工作流中的文件路径如 `fnnas/*.img.xz` ，也支持使用网络下载地址如： `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz` |
| fnnas_board      | all           | 设置打包盒子的 `board` ，功能参考 `-b`                 |
| kernel_repo      | ophub/fnnas   | 指定 github.com 内核仓库的 `<owner>/<repo>`，功能参考 `-r` |
| fnnas_kernel     | 6.12.y        | 设置内核 [版本](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas)，功能参考 `-k` |
| auto_kernel      | true          | 设置是否自动采用同系列最新版本内核，功能参考 `-a`       |
| fnnas_size       | 512/6144      | 设置系统 BOOTFS 和 ROOTFS 分区的大小，功能参考 `-s`   |
| rootfs_expand    | 16            | 设置系统根分区自动扩容大小，功能参考 `-e`              |
| builder_name     | 无            | 设置 FnNAS 系统构建者签名，功能参考 `-n`              |

- ### 本地化制作 fnnas 内核参数说明

| 参数  | 含义          | 说明        |
| ---- | ------------- | ---------- |
| -r   | debs_repo     | 指定 github.com 的 debs 内核仓库的 `<owner>/<repo>`。默认值：`ophub/fnnas` |
| -k   | dtbs_version  | 指定 [kernel](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) 名称，如 `-k 6.12.63` 。默认值：`6.12.y` |
| -e   | debs_install  | 设置是否安装官方提供的不同平台的 debs 格式内核包。选项：`amlogic` / `rockchip` / `allwinner` / `none`。默认值：`none` |
| -t   | dtbs_install  | 设置是否补充安装官方没有的 dtbs 文件。可选项 `true` / `false`。默认值：`false` |

- `sudo ./rekernel` : 使用默认配置。不安装 dtbs 包也不补充 dtbs文件，把当前 fnnas 镜像里的内核进行打包。
- `sudo ./rekernel -e amlogic` : 先把 amlogic 的 debs 内核包安装到当前系统里，然后在进行内核打包。
- `sudo ./rekernel -t true` : 先把官方没有的 dtbs 文件补充安装到当前系统里，然后在进行内核打包。
- `sudo ./rekernel -e allwinner -t false` : 先把 allwinner 的 debs 内核包安装到当前系统里，不补充安装 dtbs 文件，然后进行内核打包。

## 使用 GitHub Actions 编译 fnnas 内核

飞牛专用内核的编译方法详见 [build-fnnas-kernel.yml](.github/workflows/build-fnnas-kernel.yml) 的说明。

```yaml
- name: Build FnNAS Kernel
  uses: ophub/fnnas@main
  with:
    build_target: kernel
    fnnas_path: fnnas/*.img
    debs_repo: ophub/fnnas
    dtbs_version: 6.12.y
    debs_install: amlogic
    dtbs_install: true
```

相关参数与`本地打包命令`相对应，请参考上面的说明。

| 参数              | 默认值         | 说明                                         |
|------------------|---------------|----------------------------------------------|
| fnnas_path       | 无            | 设置官方 Arm64 原版 FnNAS 镜像文件的路径。        |
| debs_repo        | ophub/fnnas   | 指定 github.com 的 debs 内核仓库的 `<owner>/<repo>`，功能参考 `-r` |
| dtbs_version     | 6.12.y        | 设置内核版本号。功能参考 `-k`                    |
| debs_install     | none          | 设置是否安装官方提供的不同平台的 debs 格式内核包。功能参考 `-e`   |
| dtbs_install     | false         | 设置是否补充安装官方没有的 dtbs 文件。功能参考 `-t` |

- ### GitHub Actions 输出变量说明

飞牛镜像和内核使用的输出参数一样。

上传到 `Releases` 需要给仓库设置 `Workflow 读写权限`，详见[使用说明](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.cn.md#2-设置隐私变量-github_token)。

| 参数                              | 默认值         | 说明                       |
|----------------------------------|---------------|----------------------------|
| `${{ env.PACKAGED_OUTPUTPATH }}` | fnnas/out     | FnNAS 系统和内核文件输出路径   |
| `${{ env.PACKAGED_OUTPUTDATE }}` | 04.13.1058    | 打包日期（月.日.时分）         |
| `${{ env.PACKAGED_STATUS }}`     | success       | 打包状态：success / failure  |

## FnNAS 贡献者

首先感谢 [coolsnowwolf](https://github.com/coolsnowwolf/lede) 和 [unifreq](https://github.com/unifreq/openwrt_packit) 等大佬对本项目适配 FnNAS 提供的技术指导，同时感谢众多 [贡献者](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md) 对 Armbian/OpenWrt 系统提供的支持，这个项目在适配 FnNAS 的过程中直接继承和使用了这些项目的资源和技术方案。感谢各位的贡献和分享，让我们可以在更多盒子里使用 FnNAS 系统。

本系统所使用的 [u-boot](https://github.com/ophub/u-boot), [kernel](https://github.com/ophub/kernel) 和 [firmware](https://github.com/ophub/firmware) 等资源主要从 [unifreq/openwrt_packit](https://github.com/unifreq/openwrt_packit) 的项目中复制而来，部分文件由用户在 [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) / [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) / [fnnas](https://github.com/ophub/fnnas) / [luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) / [kernel](https://github.com/ophub/kernel) / [u-boot](https://github.com/ophub/u-boot) 等项目的 [Pull](https://github.com/ophub/fnnas/pulls) 和 [Issues](https://github.com/ophub/fnnas/issues) 中提供分享。为感谢这些开拓者和分享者，我统一在 [CONTRIBUTORS.md](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md) 中进行了记录。再次感谢大家为盒子赋予了新的生命和意义。

## 其他发行版

- [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) 项目提供了在盒子中使用的 `Armbian` 系统，在支持 FnNAS 的相关设备中同样适用。
- [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) 项目提供了在盒子中使用的 `OpenWrt` 系统，在支持 FnNAS 的相关设备中同样适用。
- [unifreq](https://github.com/unifreq/openwrt_packit) 为晶晨、瑞芯微和全志等更多盒子制作了 `OpenWrt` 系统，属于盒子圈的标杆，推荐使用。
- [cooip-jm](https://github.com/cooip-jm) 在他的 [wiki](https://github.com/cooip-jm/About-openwrt/wiki) 里分享了很多 Armbian，OpenWrt，lxc，docker，AdGuard 等应用的使用方法，推荐学习。

## 链接

- [fnnas.com](https://fnnas.com)
- [unifreq](https://github.com/unifreq)
- [coolsnowwolf](https://github.com/coolsnowwolf/lede)

## License

The fnnas © OPHUB is licensed under [GPL-2.0](LICENSE)
