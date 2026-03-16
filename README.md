<div align="center">
    <img src="https://github.com/user-attachments/assets/ea86c39b-4ed6-4f14-b7e6-bc551b495e39" alt="FnNAS" />
</div>
<br />

View Chinese description | [查看中文说明](README.cn.md)

[FnNAS](https://fnnas.com/) is a deeply customized operating system built on the latest Linux kernel (Debian distribution). It offers excellent hardware compatibility with comprehensive support for mainstream x86 and Arm64 devices, enabling users to build their own NAS and flexibly expand external storage. Now, you can easily replace the Android TV system on your TV box with FnNAS, transforming it into a powerful private data storage server.

This project benefits from the sustained contributions of numerous [contributors](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md). Under the guidance of FnNAS official technical experts, we have built an FnNAS system adapted for Arm64 architecture, covering TV boxes powered by `Amlogic`, `Rockchip`, and `Allwinner` SoCs. The build version fully inherits all features of the official system, with support for writing to eMMC boot and online kernel updates. Please visit the [Releases](https://github.com/ophub/fnnas/releases) page to download the latest firmware. You are welcome to `Fork` this project for personalized customization. If this project is helpful to you, please click the `Star` ⭐ in the upper right corner of the repository to show your support!

## FnNAS Firmware Default Information

| System Name    | Default Account | Default Password | SSH Port | IP Address |
| -------------- | ------- | ------- | ------- | ------- |
| 🛜 [FnNAS.OS](https://github.com/ophub/fnnas/releases) | Custom | Custom | 22 | Get IP from Router |


## Supported Device List

⬆️ Models for each platform (Amlogic/Rockchip/Allwinner) are arranged by SoC performance from high to low.

| SoC  | [Device](https://github.com/ophub/fnnas/releases) | [Kernel](https://github.com/ophub/fnnas) |
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
| rk3588(s) | [Radxa-Rock5B](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1240), [Radxa-Rock5C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [Orange-Pi-5-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2400), [Beelink-IPC-R](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/415), [HLink-H88K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H88K-V3](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [NanoPC-T6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2453), [Smart-Am60](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2817), [DC-A588](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2988), [Orangepi-5B](https://github.com/ophub/amlogic-s9xxx-armbian/pull/3052), [CM3588-NAS](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3306), [Rock-5-ITX](https://github.com/ophub/fnnas/issues/355), [LZ-D3588](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3328) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3576 | [NanoPi-m5](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3207) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3399 | [EAIDK-610](https://github.com/ophub/amlogic-s9xxx-armbian/pull/991), [King3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1080), [TN3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1094), [Kylin3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1132), [ZCube1-Max](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1247), [CRRC](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1280), [SMART-AM40](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1317), [SW799](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1326), [ZYSJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1380), [DG-3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1492), [DLFR100](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1522), [Emb3531](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1549), [Leez-p710](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1609), [tvi3315a](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1687), [xiaobao](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1698), [Fine3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1790), [Firefly-RK3399](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/491), [LX-R3S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2026), [Hugsun-x99](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2050), [Tb-ls3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2146), [Hisense-hs530r](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/572), [Tpm312](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2403), [ZK-rk39a](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2446), [YSKJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2673), [Fmx1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2691), [Fmx1-Pro-B](https://github.com/ophub/fnnas/issues/250), [Sv-33a6x](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/748), [Sv-33a6x(VPU)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3372), [AIO-3399B](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3185), [AIO-3399C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3339), [AIO-3399C(AI)](https://github.com/ophub/fnnas/issues/108), [TaraM](https://github.com/ophub/u-boot/pull/28), [NanoPC-T4](https://github.com/ophub/u-boot/pull/30), [Firefly-Core-3399-JD4](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3354), [GEA-6319](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3383) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3568 | [FastRhino-R66S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1061), [FastRhino-R68S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/774), [Radxa-E25](https://wiki.radxa.com/Rock3/CM/CM3I/E25), [NanoPi-R5S](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [NanoPi-R5C](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [HLink-H66K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H68K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H69K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [Seewo-sv21](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2017), [Mrkaio-m68s](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2155), [Swan1-w28](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2407), [Ruisen-box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2508), [DG-TN3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2661), [Alark35-3500](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2911), [MMBox-Anas3035](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2995), [Wocyber-A3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2978), [Photonicat](https://github.com/ophub/amlogic-s9xxx-openwrt/pull/827), [NSY-G16-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [NSY-G68-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [BDY-G18-Pro](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/847), [Gzpeite-P01](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3221), [LZ-K3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3304), [BDKJ-One](https://github.com/ophub/u-boot/pull/29), [Station-P2](https://github.com/ophub/fnnas/pull/350), [Lyt-t68m](https://github.com/ophub/fnnas/issues/435) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3566 | [Panther-X2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1319), [JP-TvBox](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1867), [LCKFB-Taishan-Pi](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2538), [WXY-OEC-turbo-4g](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2736), [Station-M2](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/744), [Orange-Pi-3B](https://github.com/ophub/fnnas/issues/261) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3528 | [HLink-H28K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1726), [Radxa-E20C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [H96-Max-M2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2404), [HK1-Rbox-K8S](https://github.com/ophub/fnnas/issues/464), [HT2](https://github.com/ophub/fnnas/issues/464), [CD1000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3302) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3328 | [BeikeYun](https://github.com/ophub/amlogic-s9xxx-armbian/issues/852), [Chainedbox-L1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1680), [Station-M1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Bqeel-MVR9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Renegade/Firefly](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1861) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| rk3318 | [RX3318-Box](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2129) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| h6 | [Vplus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1100), [Tanix-TX6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1120), [TQC-A01](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1638) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| h618 | [OrangePi-Zero3](https://github.com/ophub/fnnas/issues/158) | [fnnas](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |

> [!TIP]
> Currently, [s905 series boxes](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1173) can only boot from `TF/SD/USB`, while other box models support writing to `eMMC`. For more information, please refer to the [✅Supported Device List Instructions](make-fnnas/fnnas-files/common-files/etc/model_database.conf). To add new supported devices, refer to section 12.15 in the documentation: [Adding New Supported Devices](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.md#1215-how-to-add-new-supported-devices).


## Instructions for Installing and Upgrading FnNAS

Select the FnNAS system corresponding to your device model. Refer to the respective instructions for usage on different devices.

- ### Install FnNAS to eMMC

1. For `Rockchip` platforms, please refer to [Chapter 8](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.cn.md) of the documentation. The installation procedure is the same as Armbian.

2. For `Amlogic` and `Allwinner` platforms, use tools like [Rufus](https://rufus.ie/) or [balenaEtcher](https://www.balena.io/etcher/) to write the system image to a USB drive, then insert the prepared USB drive into the box. Check your router's management interface for a newly connected device named 'debian' and obtain its IP address (e.g., `192.168.1.15`). Access http://192.168.1.15:5666 via a browser to enter the FnNAS account creation interface. After creating a custom account and logging into the FnNAS system, enable SSH in `System Settings` → `SSH`. Then use an SSH client to connect to the system terminal and execute the following commands:

```shell
sudo -i
fnnas-install
```

| Optional | Default | Options | Description       |
| -------- | ------- | ------- | ----------------- |
| -m       | no      | yes/no  | Use mainline u-boot |
| -a       | yes     | yes/no  | Use the [ampart](https://github.com/7Ji/ampart) partition adjustment tool |
| -l       | no      | yes/no  | Display full device list |

Example: `fnnas-install -m yes`

> [!TIP]
> Partition option description: Custom system rootfs size is supported when available disk space exceeds 16GiB (default: 16GiB).
>
> During system reinstallation, the script automatically detects the partition structure on the eMMC. If a personal data partition (P3) is detected, Option `3` will be activated in the partition menu. Selecting this option strictly preserves the current partition table layout, ensuring that data within the P3 partition is not overwritten. After installation, you can directly mount and access this partition via the 'Storage Manager' interface in FnNAS.

| Optional | Description |
| :------: | :---------- |
| **1**    | Rootfs partition limit to **16GiB**.                           |
| **2**    | **[default]** Rootfs partition expand to full disk (**100%**). |
| **3**    | **Retain current Rootfs size** (Preserve P3 Data).             |
| **≥16**  | Enter a number (**GiB**) to specify Rootfs partition size.     |

- ### Update FnNAS Kernel

Login to FnNAS system SSH terminal → Execute the following commands:

```shell
sudo -i
fnnas-update
```

| Optional | Default      | Options       | Description                      |
| -------- | ------------ | ------------- | -------------------------------- |
| -r       | ophub/fnnas  | `<owner>/<repo>` | Set the repository for downloading kernels from github.com |
| -k       | Latest version | Kernel version | Set the [kernel version](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) |
| -b       | yes          | yes/no        | Automatically back up the current kernel when updating |
| -m       | no           | yes/no        | Use mainline u-boot |
| -s       | None         | None/DiskName | [SOS] Restore the system kernel on eMMC/NVMe/sdX or other disks |
| -h       | None         | None          | View help |

Example: `fnnas-update -k 6.12.63`

When specifying the kernel version via the `-k` parameter, you can specify an exact version number, e.g., `fnnas-update -k 6.12.63`, or specify a kernel series prefix, e.g., `fnnas-update -k 6.12`. When a series prefix is specified, the latest version within that series will be used automatically.

When updating the kernel, the current kernel is automatically backed up in the `/ddbr/backup` directory. The last 3 kernel versions are retained. If the newly installed kernel is unstable, you can roll back to a backed-up kernel at any time. If a kernel update causes the system to fail to boot, you can restore the system kernel via `fnnas-update -s`.

- ### Create Swap for FnNAS

When running memory-intensive applications such as `docker`, if the device's memory is insufficient, you can create a `swap` partition to use a portion of disk space as virtual memory. The parameter unit for the command below is `GB`, with a default value of `1`.

Login to FnNAS system SSH terminal → Execute the following command:

```shell
fnnas-swap 1
```

- ### Control LED Display

Login to FnNAS system SSH terminal → Execute the following command:

```shell
fnnas-openvfd
```

Refer to the [LED Screen Display Control Instructions](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/led_screen_display_control.md) for configuration.

- ### Backup/Restore eMMC Original System

Supports backing up and restoring the box's `eMMC` via `TF/SD/USB` boot. It is recommended to back up the original Android TV system before installing FnNAS on a new device, so the original system can be restored if needed.

Please boot the FnNAS system from `TF/SD/USB` → Execute the following command:

```shell
fnnas-ddbr
```

Enter `b` when prompted to back up the system, or `r` to restore.

> [!IMPORTANT]
> Alternatively, you can flash the Android system into eMMC via USB flashing. Android system images can be obtained from [Tools](https://github.com/ophub/kernel/releases/tag/tools).

- ### Sync Latest Service Scripts

To update all service scripts in the system to the latest version, login to FnNAS system SSH terminal → Execute the following command:

```shell
fnnas-sync
```

## Local Packaging

1. Clone the repository locally: `git clone --depth 1 https://github.com/ophub/fnnas.git`

2. Install necessary dependencies (e.g., Ubuntu 24.04):

```shell
sudo apt-get update -y
sudo apt-get full-upgrade -y
# For Ubuntu-24.04
sudo apt-get install -y $(cat make-fnnas/script/ubuntu2404-make-fnnas-depends)
```

3. Enter the `~/fnnas` root directory, create a `fnnas-arm64` folder, and place the FnNAS image file (e.g., `fnos_arm_1.0.0_258.img`) into the `~/fnnas/fnnas-arm64` directory.

4. In the `~/fnnas` root directory, run `sudo ./renas -b s905x3 -k 6.12.63` to generate the FnNAS image file for the specified board. The generated files are saved in the `~/fnnas/out` directory.

- ### Local Packaging Parameter Description

| Parameter | Meaning     | Description |
| ----      | ----------  | ----------  |
| -b        | Board      | Specifies the target device code. For example, `-b s905x3` compiles for the s905x3 device. Multiple device codes can be joined with `_`, e.g., `-b s905x3_s905d`. Special values: `all` compiles all devices, `first50` compiles the first 50 in the device library, `range50_100` compiles the 51st through 100th, `range100_150` compiles the 101st through 150th, `last20` compiles the last 20. Device code lists are detailed in the `BOARD` configuration item of [model_database.conf](make-fnnas/fnnas-files/common-files/etc/model_database.conf). Default: `all` |
| -r        | KernelRepo | Specifies the `<owner>/<repo>` of the github.com kernel repository. Default: `ophub/fnnas` |
| -k        | Kernel     | Specifies the [kernel](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) version, e.g., `-k 6.12.63`. Multiple kernels are joined with `_`, e.g., `-k 6.12.63_6.18.3`. |
| -a        | AutoKernel | Sets whether to automatically adopt the latest kernel version within the same series. When set to `true`, the kernel library is checked for a newer version in the same series as the kernel specified in `-k` (e.g., 6.12.63), and automatically switches to the latest version if available. When set to `false`, the specified kernel version is compiled. Default: `true` |
| -s        | Size       | Sets the system image partition size (Unit: MiB). When setting only the `ROOTFS` partition size, specify a single value, e.g., `-s 6144`. When setting both `BOOTFS` and `ROOTFS` partition sizes, join the two values with /, e.g., `-s 512/6144`. Default: `512/6144` |
| -e        | RootfsExpand | Sets the automatic expansion size (Unit: GiB) of the system root partition. Default: `16` |
| -n        | BuilderName | Sets the FnNAS system builder signature. Do not include spaces in the signature. Default: `None` |

- `sudo ./renas` : Use default configuration to package for all TV box models.
- `sudo ./renas -b s905x3 -k 6.12.63` : Recommended. Package with the specified kernel using default configuration.
- `sudo ./renas -b s905x3 -k 6.12.y` : Use default configuration, automatically using the latest version of the 6.12.y series kernel.
- `sudo ./renas -b s905x3_s905d -k 6.12.63_6.18.3` : Use default configuration to package multiple kernels simultaneously. Use `_` to join multiple kernel parameters.
- `sudo ./renas -b s905x3 -k 6.12.63 -s 6144` : Use default configuration, specify one kernel and one model for packaging, with the system partition size set to `6144` MiB.
- `sudo ./renas -b s905x3_s905d` : Use default configuration to package all kernels for multiple TV box models. Use `_` to join multiple models.
- `sudo ./renas -k 6.12.63_6.18.3` : Use default configuration, specify multiple kernels to package for all TV box models. Kernel parameters are joined with `_`.
- `sudo ./renas -k 6.12.63_6.18.3 -a true` : Use default configuration, specify multiple kernels to package for all TV box models. Kernel parameters are joined with `_`. Automatically upgrade to the latest kernel within the same series.
- `sudo ./renas -b s905x3 -e 32` : Use default configuration to package for the `s905x3` model, with the rootfs automatic expansion size set to `32` GiB.

## Building Images via GitHub Actions

1. Workflow configuration files are located in [.github/workflows](.github/workflows).

2. On the [Actions](https://github.com/ophub/fnnas/actions) page, select ***`Build FnNAS Image`*** to compile using [build-fnnas-image.yml](.github/workflows/build-fnnas-image.yml). Click the ***`Run workflow`*** button to start the build. In the options panel, you can set the FnNAS image download URL in `Custom fnnas image download url`, e.g., `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz`. If not specified, the official image stored in [fnnas_base_image](https://github.com/ophub/fnnas/releases/tag/fnnas_base_image) will be used by default.

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

- ### GitHub Actions Image Build Parameter Description

The parameters correspond to the local packaging commands described above.

| Parameter       | Default       | Description                                             |
|-----------------|---------------|---------------------------------------------------------|
| fnnas_path      | None          | Sets the path to the official Arm64 original FnNAS image file. Supports workflow file paths (e.g., `fnnas/*.img.xz`) and network download URLs (e.g., `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz`) |
| fnnas_board     | all           | Sets the target `board` for packaging. Refer to `-b` for details |
| kernel_repo     | ophub/fnnas   | Specifies the `<owner>/<repo>` of the github.com kernel repository. Refer to `-r` for details |
| fnnas_kernel    | 6.12.y        | Sets the kernel [version](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas). Refer to `-k` for details |
| auto_kernel     | true          | Sets whether to automatically adopt the latest kernel within the same series. Refer to `-a` for details |
| fnnas_size      | 512/6144      | Sets the `BOOTFS` and `ROOTFS` partition sizes. Refer to `-s` for details |
| rootfs_expand   | 16            | Sets the automatic expansion size (Unit: GiB) of the system root partition. Refer to `-e` for details |
| builder_name    | None          | Sets the FnNAS system builder signature. Refer to `-n` for details |

- ### Local FnNAS Kernel Build Parameter Description

| Parameter | Meaning | Description |
| :-------- | :------ | :---------- |
| -r | debs_repo | Specifies the `<owner>/<repo>` of the debs kernel repository on github.com. Default: `ophub/fnnas` |
| -e | debs_install | Sets whether to install official `.deb` kernel packages for different platforms. Options: `amlogic` / `rockchip` / `allwinner` / `none`. Default: `none` |
| -t | dtbs_install | Sets whether to install additional `dtbs` files missing from the official release. Options: `true` / `false`. Default: `true` |
| -k | dtbs_version | Specifies the [kernel](https://github.com/ophub/fnnas/releases/tag/kernel_fnnas) version, e.g., `-k 6.12.63`. Default: `6.12.y` |

- `sudo ./rekernel` : Uses default configuration. Does not install debs kernel packages or supplement dtbs files; packages the kernel from the current FnNAS image directly.
- `sudo ./rekernel -e amlogic` : Installs the `amlogic` debs kernel packages into the current system, then proceeds with kernel packaging.
- `sudo ./rekernel -t true` : Installs additional `dtbs` files (missing from official sources) into the current system, then proceeds with kernel packaging.
- `sudo ./rekernel -e allwinner -t false` : Installs the `allwinner` debs kernel packages into the current system without installing additional `dtbs` files, then proceeds with kernel packaging.

## Building FnNAS Kernel via GitHub Actions

For details on compiling the FnNAS-specific kernel, please refer to [build-fnnas-kernel.yml](.github/workflows/build-fnnas-kernel.yml).

```yaml
- name: Build FnNAS Kernel
  uses: ophub/fnnas@main
  with:
    build_target: kernel
    fnnas_path: fnnas/*.img
    dtbs_install: true
    dtbs_version: 6.12.y
```

The parameters correspond to the local packaging commands described above.

| Parameter        | Default       | Description                                  |
|------------------|---------------|----------------------------------------------|
| fnnas_path       | None          | Sets the path to the official Arm64 original FnNAS image file. |
| debs_repo        | ophub/fnnas   | Specifies the `<owner>/<repo>` of the debs kernel repository on github.com. Refer to `-r` for details |
| debs_install     | none          | Sets whether to install official `.deb` kernel packages. Refer to `-e` for details |
| dtbs_install     | true          | Sets whether to install additional `dtbs` files missing from the official release. Refer to `-t` for details |
| dtbs_version     | 6.12.y        | Sets the kernel version. Refer to `-k` for details |

- ### GitHub Actions Output Variable Description

FnNAS image and kernel builds use the same output parameters.

Uploading to `Releases` requires setting `Workflow Read and Write Permissions` for the repository. See [Usage Instructions](https://github.com/ophub/amlogic-s9xxx-armbian/tree/main/documents#2-set-up-private-variable-github_token-etc) for details.

| Parameter                        | Default       | Description                           |
|----------------------------------|---------------|---------------------------------------|
| `${{ env.PACKAGED_OUTPUTPATH }}` | out           | FnNAS system and kernel files output path |
| `${{ env.PACKAGED_OUTPUTDATE }}` | 04.13.1058    | Packaging date (month.day.hourminute) |
| `${{ env.PACKAGED_STATUS }}`     | success       | Packaging status: success / failure   |

## FnNAS Contributors

First of all, thanks to experts like [coolsnowwolf](https://github.com/coolsnowwolf/lede) and [unifreq](https://github.com/unifreq/openwrt_packit) for providing technical guidance on adapting this project for FnNAS. Also, thanks to the numerous [contributors](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md) for their support of the Armbian/OpenWrt systems. This project directly inherited and utilized the resources and technical solutions from these projects during the FnNAS adaptation process. Thank you all for your contributions and sharing, enabling FnNAS to run on more devices.

The [u-boot](https://github.com/ophub/u-boot), [kernel](https://github.com/ophub/kernel), and [firmware](https://github.com/ophub/firmware) resources used in this system are primarily sourced from the [unifreq/openwrt_packit](https://github.com/unifreq/openwrt_packit) project. Some files were contributed and shared by users through [Pull](https://github.com/ophub/fnnas/pulls) and [Issues](https://github.com/ophub/fnnas/issues) in projects such as [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) / [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) / [fnnas](https://github.com/ophub/fnnas) / [luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) / [kernel](https://github.com/ophub/kernel) / [u-boot](https://github.com/ophub/u-boot). To acknowledge these pioneers and contributors, they have been recorded in [CONTRIBUTORS.md](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md). Thank you again for giving new life and value to these devices.

## Other Distributions

- The [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) project provides the `Armbian` system for TV boxes, which is also applicable to FnNAS-compatible devices.
- The [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) project provides the `OpenWrt` system for TV boxes, which is also applicable to FnNAS-compatible devices.
- [unifreq](https://github.com/unifreq) has created `OpenWrt` systems for various boxes including Amlogic, Rockchip, and Allwinner. It is a benchmark project in the TV box community and is highly recommended.
- [cooip-jm](https://github.com/cooip-jm) shared extensive guides on Armbian, OpenWrt, LXC, Docker, AdGuard, and other applications in his [wiki](https://github.com/cooip-jm/About-openwrt/wiki), which is recommended for reference.

## Links

- [fnnas.com](https://fnnas.com)
- [unifreq](https://github.com/unifreq)
- [coolsnowwolf](https://github.com/coolsnowwolf/lede)

## License

The fnnas © OPHUB is licensed under [GPL-2.0](LICENSE)
