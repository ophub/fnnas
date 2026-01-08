<div align="center">
    <img src="https://github.com/user-attachments/assets/ea86c39b-4ed6-4f14-b7e6-bc551b495e39" alt="FnNAS" />
</div>
<br />

View Chinese description | [查看中文说明](README.cn.md)

[FnNAS](https://fnnas.com/) is an operating system deeply customized based on the latest Linux kernel (Debian distribution). It boasts powerful hardware compatibility, perfectly supporting mainstream x86 and Arm64 devices, allowing users to freely assemble a NAS and flexibly expand external storage. Now, you can easily replace the Android TV system of your TV box with FnNAS, transforming it into a powerful private data storage server.

This project benefits from the hard work of numerous [contributors](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md). Under the guidance of official technical experts from FnNAS, we have built an FnNAS system specifically adapted for Arm64 devices, covering `Amlogic`, `Rockchip`, and `Allwinner` architecture TV boxes. The build version fully inherits the official system features, perfectly supporting functions like writing to eMMC boot and online kernel updates. Please visit the [Releases](https://github.com/ophub/fnnas/releases) page to download the latest firmware. Everyone is welcome to `Fork` this project for personalized customization. If you find this project helpful, please click the `Star` ⭐ in the upper right corner of the repository to show your support!

## FnNAS Firmware Default Information

| System Name    | Default Account | Default Password | SSH Port | IP Address |
| -------------- | ------- | ------- | ------- | ------- |
| 🛜 [FnNAS.OS](https://github.com/ophub/fnnas/releases) | Custom | Custom | 22 | Get IP from Router |
| 🐋 [FnNAS.Docker](https://hub.docker.com/u/ophub) | Custom | Custom | 22 | Host IP |


## Supported Device List

⬆️ Models for each platform (Amlogic/Rockchip/Allwinner) are arranged by SoC performance from high to low.

| SoC  | [Device](https://github.com/ophub/fnnas/releases) | [Kernel](https://github.com/ophub/kernel) |
| ---- | ---- | ---- |
| a311d | [Khadas-VIM3](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/99), [WXY-OES](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2666) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s922x | [Beelink-GT-King](https://github.com/ophub/amlogic-s9xxx-armbian/issues/370), [Beelink-GT-King-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/707), [Ugoos-AM6-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/464), [ODROID-N2](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/201), [X88-King](https://github.com/ophub/amlogic-s9xxx-armbian/issues/988), [Ali-CT2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1150), [WXY-OES-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3029) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905x3 | [X96-Max+](https://github.com/ophub/amlogic-s9xxx-armbian/issues/351), [HK1-Box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/414), [Vontar-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1006), [H96-Max-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1250), [Ugoos-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/782), [TX3(QZ)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/644), [TX3(BZ)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1077), [X96-Air](https://github.com/ophub/amlogic-s9xxx-armbian/issues/366), [X96-Max+_A100](https://github.com/ophub/amlogic-s9xxx-armbian/issues/779), [A95X-F3-Air](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2282), [Tencent-Aurora-3Pro(s905x3-b)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/506), [X96-Max+Q1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/788), [X96-Max+100W](https://github.com/ophub/amlogic-s9xxx-armbian/issues/909), [X96-Max+_2101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1086), [Infinity-B32](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1181), [Whale](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1166), [X88-Pro-X3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621), [X99-Max-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621), [Transpeed-X3-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1621) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905x2 | [X96Max-4G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/453), [X96Max-2G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/95), [MECOOL-KM3-4G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/79), [Tanix-Tx5-Max](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/351), [A95X-F2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/851), [HG680-FJ](https://github.com/ophub/amlogic-s9xxx-armbian/pull/3089) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905l3a | [E900V22C/D](https://github.com/Calmact/e900v22c), [CM311-1a-YST](https://github.com/ophub/amlogic-s9xxx-armbian/issues/517), [M401A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/732), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/517), [UNT403A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/970), [UNT413A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/970), [ZTE-B863AV3.2-M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/741), [CM311-1a-CH](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1508), [IP112H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1520), [B863AV3.1-M2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2292) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905l3b | [CM201-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2209), [CM211-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1180), [CM311-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1268), [E900V21D](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2447), [E900V22D](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1256), [E900V21E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1514), [E900V22E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/939), [M302A/M304A](https://github.com/ophub/amlogic-s9xxx-armbian/pull/615), [Hisense-IP103H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1154), [TY1608](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1332), [TY1608](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1568), [MGV2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1613), [B860AV-2.1M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1598), [UNT403A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1712), [RG020ET-CA](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1860), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3272) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905l3 | [CM211-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1318), [CM311-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/763), [HG680-LC](https://github.com/ophub/amlogic-s9xxx-armbian/issues/978), [M401A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/921#issuecomment-1453143251), [UNT400G1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1277), [UNT400G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2625), [UNT402A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1481), [ZXV10-BV310](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1512), [M411A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1817), [ZXV10-B860AV3.2-M](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2012), [ZXV10-B860AV2.1-U](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2273), [E900V22D-2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2058), [CM201-1-6-YS](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2539), [IP108H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2539), [M301A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3055) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s912 | [Tanix-TX8-Max](https://github.com/ophub/amlogic-s9xxx-armbian/issues/500), [Tanix-TX9-Pro(3G)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/315), [Tanix-TX9-Pro(2G)](https://github.com/ophub/amlogic-s9xxx-armbian/issues/740), [Tanix-TX92](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72#issuecomment-1012790770), [Tanix-TX9S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3282), [Nexbox-A1](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/260), [Nexbox-A95X-A2](https://www.cafago.com/en/p-v2979eu-2g.html),  [A95X](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/260), [H96-Pro-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72#issuecomment-1013071513), [VORKE-Z6-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/72), [Mecool-M8S-PRO-L](https://github.com/ophub/amlogic-s9xxx-armbian/issues/158), [Vontar-X92](https://github.com/ophub/amlogic-s9xxx-armbian/issues/525), [T95Z-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/668), [Octopus-Planet](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1020), [Phicomm-T1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/522), [TX3-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1882), [OneCloudPro-V1.1_V1.2](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2241) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905d | [MECOOL-KI-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/59), [Phicomm-N1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/925), [SML-5442TW](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/451) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905x | [HG680P](https://github.com/ophub/amlogic-s9xxx-armbian/issues/262), [B860H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/60), [TBee-Box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/98), [T95](https://github.com/ophub/amlogic-s9xxx-armbian/issues/285), [TX9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/645), [XiaoMI-3S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1405), [X96](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1480), [Nexbox-a95x](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1714), [BTV9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3256) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905mb | [S65](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1644) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905l | [UNT402A](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1481), [M201-S](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/444), [MiBox-4](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2101), [MiBox-4C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1826), [MG101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1912), [E900V21C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2341), [IP108H-53u1m](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2357), [Tencent-Aurora-1s](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2465), [B860AV2.1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2491), [B860AV2.1U](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2499), [HM201](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2585) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905l2 | [MGV2000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/648), [MGV2000-K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1839), [MGV3000](https://github.com/ophub/amlogic-s9xxx-armbian/issues/921), [Wojia-TV-IPBS9505](https://github.com/ophub/amlogic-s9xxx-armbian/issues/648), [M301A](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/405), [E900v21E](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1278), [e900v21d](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2127), [CM201-1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2188), [IP108H](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2598), [MGV2000-CW](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2616) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905lb | [Q96-mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/734), [BesTV-R3300L](https://github.com/ophub/amlogic-s9xxx-armbian/pull/993), [SumaVision-Q7](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1190), [MG101](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1570), [s65](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2128), [IPBS9505](https://github.com/ophub/amlogic-s9xxx-armbian/pull/993#issuecomment-2276804591) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905w | [X96-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/621), [TX3-Mini](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1062), [W95](https://github.com/ophub/amlogic-s9xxx-armbian/issues/570), [X96W/FunTV](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1044), [MXQ-Pro-4K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1140), [MeCool-m8s-pro-W](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3245) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| s905 | [Beelink-Mini-MX-2G](https://github.com/ophub/amlogic-s9xxx-armbian/issues/127), [Sunvell-T95M](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/337), [MXQ-Pro+4K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/715), [SumaVision-Q5](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1175) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| rk3588(s) | [Radxa-Rock5B](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1240), [Radxa-Rock5C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [Orange-Pi-5-Plus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2400), [Beelink-IPC-R](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/415), [HLink-H88K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H88K-V3](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [NanoPC-T6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2453), [Smart-Am60](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2817), [DC-A588](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2988), [Orangepi-5B](https://github.com/ophub/amlogic-s9xxx-armbian/pull/3052), [CM3588-NAS](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3306) | [rk3588](https://github.com/ophub/kernel/releases/tag/kernel_rk3588) |
| rk3399 | [EAIDK-610](https://github.com/ophub/amlogic-s9xxx-armbian/pull/991), [King3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1080), [TN3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1094), [Kylin3399](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1132), [ZCube1-Max](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1247), [CRRC](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1280), [SMART-AM40](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1317), [SW799](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1326), [ZYSJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1380), [DG-3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1492), [DLFR100](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1522), [Emb3531](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1549), [Leez-p710](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1609), [tvi3315a](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1687), [xiaobao](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1698), [Fine3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1790), [Firefly-RK3399](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/491), [LX-R3S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2026), [Hugsun-x99](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2050), [Tb-ls3399](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2146), [Hisense-hs530r](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/572), [Tpm312](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2403), [ZK-rk39a](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2446), [YSKJ](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2673), [Fmx1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2691), [Sv-33a6x](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/748), [AIO-3399b](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3185) | [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx)<br />[stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| rk3568 | [FastRhino-R66S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1061), [FastRhino-R68S](https://github.com/ophub/amlogic-s9xxx-armbian/issues/774), [Radxa-E25](https://wiki.radxa.com/Rock3/CM/CM3I/E25), [NanoPi-R5S](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [NanoPi-R5C](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1217), [HLink-H66K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H68K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [HLink-H69K](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1726), [Seewo-sv21](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2017), [Mrkaio-m68s](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2155), [Swan1-w28](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2407), [Ruisen-box](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2508), [DG-TN3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2661), [Alark35-3500](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2911), [MMBox-Anas3035](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2995), [Wocyber-A3](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2978), [Photonicat](https://github.com/ophub/amlogic-s9xxx-openwrt/pull/827), [NSY-G16-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [NSY-G68-Plus](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/845), [BDY-G18-Pro](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/847), [Gzpeite-P01](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3221), [LZ-K3568](https://github.com/ophub/amlogic-s9xxx-armbian/issues/3304) | [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx)<br />[stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| rk3566 | [Panther-X2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1319), [JP-TvBox](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1867), [LCKFB-Taishan-Pi](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2538), [WXY-OEC-turbo-4g](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2736), [Station-M2](https://github.com/ophub/amlogic-s9xxx-openwrt/issues/744) | [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx)<br />[stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| rk3528 | [HLink-H28K](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1726), [Radxa-E20C](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2324), [H96-Max-M2](https://github.com/ophub/amlogic-s9xxx-armbian/issues/2404) | [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx) |
| rk3328 | [BeikeYun](https://github.com/ophub/amlogic-s9xxx-armbian/issues/852), [Chainedbox-L1-Pro](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1680), [Station-M1](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Bqeel-MVR9](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1313), [Renegade/Firefly](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1861) | [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx)<br />[stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| rk3318 | [RX3318-Box](https://github.com/ophub/amlogic-s9xxx-armbian/pull/2129) | [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| h6 | [Vplus](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1100), [Tanix-TX6](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1120), [TQC-A01](https://github.com/ophub/amlogic-s9xxx-armbian/pull/1638) | [h6](https://github.com/ophub/kernel/releases/tag/kernel_h6)<br>[stable](https://github.com/ophub/kernel/releases/tag/kernel_stable) |

> [!TIP]
> Currently, [s905 boxes](https://github.com/ophub/amlogic-s9xxx-armbian/issues/1173) can only be used from `TF/SD/USB`, while other box models support writing to `eMMC`. For more information, please check the [✅Supported Device List Instructions](make-fnnas/fnnas-files/common-files/etc/model_database.conf). You can refer to section 12.15 of the documentation for methods on [adding new supported devices](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.md#1215-how-to-add-new-supported-devices).


## Instructions for Installing and Upgrading FnNAS

Select the FnNAS system corresponding to your box model. View the corresponding instructions for different device usage.

- ### Install FnNAS to eMMC

1. For `Rockchip` platforms, please refer to [Chapter 8](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/README.cn.md) of the documentation for installation methods, which are the same as Armbian installation.

2. For `Amlogic` and `Allwinner` platforms, use tools like [Rufus](https://rufus.ie/) or [balenaEtcher](https://www.balena.io/etcher/) to write the system to a USB drive, then insert the prepared USB drive into the box. Check your router for a new device named 'debian' and find its IP address (e.g., `192.168.1.15`). Access http://192.168.1.15:5666 via a browser to enter the FnNAS account creation interface. After creating a custom account and logging into the FnNAS system, enable SSH in `System Settings` → `SSH`. Then use an SSH connection tool to enter the system terminal and enter the command:

```shell
fnnas-install
```

| Optional | Default | Options | Description       |
| -------- | ------- | ------- | ----------------- |
| -m       | no      | yes/no  | Use mainline u-boot |
| -a       | yes     | yes/no  | Use [ampart](https://github.com/7Ji/ampart) partition adjustment tool |
| -l       | no      | yes/no  | Show full device list |

Example: `fnnas-install -m yes -a no`

- ### Update FnNAS Kernel

Login to FnNAS system SSH terminal → Enter command:

```shell
fnnas-update
```

| Optional | Default      | Options       | Description                      |
| -------- | ------------ | ------------- | -------------------------------- |
| -r       | ophub/kernel | `<owner>/<repo>` | Set the repository to download the kernel from github.com |
| -u       | Automation   | stable/flippy/beta/rk3588/rk35xx/h6 | Set the [tags suffix](https://github.com/ophub/kernel/releases) of the kernel in use |
| -k       | Latest version | Kernel version | Set the [kernel version](https://github.com/ophub/kernel/releases/tag/kernel_stable) |
| -b       | yes          | yes/no        | Automatically back up the current system's kernel when updating the kernel |
| -m       | no           | yes/no        | Use mainline u-boot |
| -s       | None         | None/DiskName | [SOS] Restore the system kernel in eMMC/NVMe/sdX and other disks |
| -h       | None         | None          | View help |

Example: `fnnas-update -k 6.12.63 -u stable`

When specifying the kernel version number via the `-k` parameter, you can specify the exact version number, e.g., `fnnas-update -k 6.12.63`, or vaguely specify the kernel series, e.g., `fnnas-update -k 6.12`. When vaguely specified, the latest version of the specified series will be used automatically.

When updating the kernel, the currently used kernel will be automatically backed up in the `/ddbr/backup` directory. The last 3 used kernel versions are retained. If the newly installed kernel is unstable, you can restore to the backed-up kernel at any time. If a kernel update failure causes the system to fail to boot, you can restore the system kernel via `fnnas-update -s`.

- ### Create Swap for FnNAS

If you feel that the current box memory is insufficient when using memory-intensive applications like `docker`, you can create a `swap` virtual memory partition to use a certain amount of disk space as memory. The unit for the input parameter in the command below is `GB`, defaulting to `1`.

Login to FnNAS system SSH terminal → Enter command:

```shell
fnnas-swap 1
```

- ### Control LED Display

Login to FnNAS system SSH terminal → Enter command:

```shell
fnnas-openvfd
```

Debug according to the [LED Screen Display Control Instructions](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/documents/led_screen_display_control.md).

- ### Backup/Restore eMMC Original System

Supports backing up/restoring the box's `eMMC` partition on `TF/SD/USB`. It is recommended that you backup the Android TV system that comes with the current box before installing the FnNAS system on a brand new box, so that it can be used later when restoring the TV system.

Please boot the FnNAS system from `TF/SD/USB` → Enter command.

```shell
fnnas-ddbr
```

Enter `b` according to the prompt to back up the system, and enter `r` to restore the system.

> [!IMPORTANT]
> Additionally, you can use the flashing method to flash the Android system into eMMC. The Android system download images can be found in [Tools](https://github.com/ophub/kernel/releases/tag/tools).

- ### Sync Latest Service Scripts

To update all service scripts in the local system to the latest version, login to FnNAS system SSH terminal → Enter command:

```shell
fnnas-sync
```

## Local Packaging

1. Clone the repository locally: `git clone --depth 1 https://github.com/ophub/fnnas.git`

2. Install necessary packages (e.g., Ubuntu 24.04):

```shell
sudo apt-get update -y
sudo apt-get full-upgrade -y
# For Ubuntu-24.04
sudo apt-get install -y $(cat make-fnnas/script/ubuntu2404-make-fnnas-depends)
```

1. Enter the `~/fnnas` root directory, create a folder named `fnnas-arm64` in the root directory, and upload the FnNAS image file (e.g., `fnos_arm_1.0.0_258.img`) to the `~/fnnas/fnnas-arm64` directory.

2. Enter the `~/fnnas` root directory, then run the sudo `./renas -b s905x3 -k 6.12.63` command to generate the FnNAS image file for the specified board. The generated files are saved in the `~/fnnas/out` directory.

- ### Local Packaging Parameter Description

| Parameter | Meaning     | Description |
| ----      | ----------  | ----------  |
| -b        | Board      | Specifies the device code to be compiled. For example, `-b s905x3` means compiling the device with code s905x3. Multiple devices can be connected with `_`, such as `-b s905x3_s905d`. Special values: `all` means compile all devices, `first50` means compile the first 50 in the device library, `from50` means start from the 51st to the last, `last20` means the last 20. Device code lists are detailed in the BOARD configuration item in [model_database.conf](make-fnnas/fnnas-files/common-files/etc/model_database.conf). Default value: `all` |
| -r        | KernelRepo | Specifies the `<owner>/<repo>` of the github.com kernel repository. Default value: `ophub/kernel` |
| -u        | kernelUsage | Set the `tags suffix` of the kernel used, such as [stable](https://github.com/ophub/kernel/releases/tag/kernel_stable), [flippy](https://github.com/ophub/kernel/releases/tag/kernel_flippy), [beta](https://github.com/ophub/kernel/releases/tag/kernel_beta). Default value: `stable` |
| -k        | Kernel     | Specify [kernel](https://github.com/ophub/kernel/releases/tag/kernel_stable) name, such as `-k 6.6.12`. Connect multiple kernels with `_`, such as `-k 6.12.63_6.18.3`. The kernel version freely specified by the `-k` parameter is only valid for kernels using `stable/flippy/beta`. Other kernel series such as [rk3588](https://github.com/ophub/kernel/releases/tag/kernel_rk3588) / [rk35xx](https://github.com/ophub/kernel/releases/tag/kernel_rk35xx) / [h6](https://github.com/ophub/kernel/releases/tag/kernel_h6) can only use specific kernels. |
| -a        | AutoKernel | Sets whether to automatically adopt the latest version of the kernel in the same series. When set to `true`, it will automatically check the kernel library for a newer version of the kernel specified in `-k`, such as 6.12.63. If there is a newer version after 6.12.63, it will automatically switch to the latest version. When set to `false`, the specified version kernel will be compiled. Default value: `true` |
| -s        | Size       | Set the size(Unit: MiB) of the system's image partitions. When setting only the `ROOTFS` partition size, you can specify a single value, for example: `-s 6144`. When setting both `BOOTFS` and `ROOTFS` partition sizes, use / to connect the two values, for example: `-s 512/6144`. The default value is `512/6144` |
| -n        | BuilderName | Set the Armbian system builder signature. Do not include spaces when setting the signature. Default value: `None` |

- `sudo ./renas` : Use default configuration to package for `all` models of TV boxes.
- `sudo ./renas -b s905x3 -k 6.12.63` : Recommended. Use default configuration for packaging with relevant kernel.
- `sudo ./renas -b s905x3 -k 6.12.y` : Use default configuration for packaging, using the latest version of the 6.12.y series kernel.
- `sudo ./renas -b s905x3_s905d -k 6.12.63_6.18.3` : Use default configuration to package multiple kernels simultaneously. Use `_` to connect multi-kernel parameters.
- `sudo ./renas -b s905x3 -k 6.12.63 -s 6144` : Use default configuration, specify one kernel and one model for packaging, system size set to `6144` MiB.
- `sudo ./renas -b s905x3_s905d` : Use default configuration to package all kernels for multiple models of TV boxes, use `_` to connect multiple models.
- `sudo ./renas -k 6.12.63_6.18.3` : Use default configuration, specify multiple kernels to package for all models of TV boxes, kernel packages connected with `_`.
- `sudo ./renas -k 6.12.63_6.18.3 -a true` : Use default configuration, specify multiple kernels to package for all models of TV boxes, kernel packages connected with `_`. Automatically upgrade to the latest kernel of the same series.

## Use GitHub Actions for Compilation

1. Workflow configuration files are located in [.github/workflows](.github/workflows).

2. Select `Build FnNAS` on the Actions page to compile using [build-fnnas-using-official-image.yml](.github/workflows/build-fnnas-using-official-image.yml). Click the `Run workflow` button to compile. In the options panel, you can set the FnNAS image file path in `Set fnnas image file path`, e.g., `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz` or other network download addresses. If not set, the official image saved in [ophub/fnnas](https://github.com/ophub/fnnas/releases/tag/fnnas_arm64) will be used by default.

```yaml
- name: Build FnNAS
  uses: ophub/fnnas@main
  with:
    fnnas_path: fnnas/*.img.xz
    fnnas_board: s905d_s905x3_s922x_s905x
    fnnas_kernel: 6.12.y
```

- ### GitHub Actions Input Parameter Description

The related parameters correspond to the `local packaging command`, please refer to the above description.

| Parameter       | Default       | Description                                             |
|-----------------|---------------|---------------------------------------------------------|
| fnnas_path      | None          | Set the path of the official Arm64 original FnNAS image file. Supports using file paths in the current workflow like `fnnas/*.img.xz`, and also supports network download addresses like: `https://fnnas.com/.../fnos_arm_1.0.0_258.img.xz` |
| fnnas_board     | all           | Set the board for packaging boxes. Function refers to `-b` |
| kernel_repo     | ophub/kernel  | Specify the `<owner>/<repo>` of the github.com kernel repository. Function refers to `-r` |
| kernel_usage    | stable        | Set the `tags suffix` of the kernel used. Function refers to `-u` |
| fnnas_kernel    | 6.12.y        | Set the [version](https://github.com/ophub/kernel/releases/tag/kernel_stable) of the kernel. Function refers to `-k` |
| auto_kernel     | true          | Set whether to automatically adopt the latest version of the kernel in the same series. Function refers to `-a` |
| fnnas_size      | 512/6144      | Set the size of the system `BOOTFS` and `ROOTFS` partitions. Function refers to `-s` |
| builder_name    | None          | Set the FnNAS system `builder signature`. Function refers to `-n` |

- ### GitHub Actions Output Variable Description

Uploading to `Releases` requires setting `Workflow Read and Write permissions` for the repository. See [Usage Instructions](https://github.com/ophub/amlogic-s9xxx-armbian/tree/main/documents#2-set-up-private-variable-github_token-etc) for details

| Parameter                        | Default       | Description                           |
|----------------------------------|---------------|---------------------------------------|
| `${{ env.PACKAGED_OUTPUTPATH }}` | out           | FnNAS system files output path      |
| `${{ env.PACKAGED_OUTPUTDATE }}` | 04.13.1058    | Packaging date (month.day.hourminute) |
| `${{ env.PACKAGED_STATUS }}`     | success       | Packaging status: success / failure   |

## Compiling Kernel using GitHub Actions

For kernel compilation methods, see the instructions in [compile-kernel](https://github.com/ophub/amlogic-s9xxx-armbian/tree/main/compile-kernel). The kernel used is common with the kernel used in Armbian/OpenWrt systems.

```yaml
- name: Compile the kernel
  uses: ophub/amlogic-s9xxx-armbian@main
  with:
    build_target: kernel
    kernel_version: 6.12.y
    kernel_auto: true
    kernel_sign: -yourname
```

## FnNAS Contributors

First of all, thanks to experts like [coolsnowwolf](https://github.com/coolsnowwolf/lede) and [unifreq](https://github.com/unifreq/openwrt_packit) for providing technical guidance on adapting this project for FnNAS. Also, thanks to the numerous [contributors](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md) for their support of the Armbian/OpenWrt systems. This project directly inherited and used the resources and technical solutions of these projects during the adaptation process for FnNAS. Thank you all for your contributions and sharing, allowing us to use the FnNAS system on more boxes.

The [u-boot](https://github.com/ophub/u-boot), [kernel](https://github.com/ophub/kernel) and [firmware](https://github.com/ophub/firmware) resources used in this system are mainly copied from the [unifreq/openwrt_packit](https://github.com/unifreq/openwrt_packit) project. Some files are provided and shared by users in [Pull](https://github.com/ophub/fnnas/pulls) and [Issues](https://github.com/ophub/fnnas/issues) of projects like [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) / [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) / [fnnas](https://github.com/ophub/fnnas) / [luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) / [kernel](https://github.com/ophub/kernel) / [u-boot](https://github.com/ophub/u-boot). To thank these pioneers and sharers, I have recorded them uniformly in [CONTRIBUTORS.md](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/CONTRIBUTORS.md). Thank you again for giving new life and meaning to the boxes.

## Other Distributions

- The [amlogic-s9xxx-armbian](https://github.com/ophub/amlogic-s9xxx-armbian) project provides the `Armbian` system for use in boxes, which is also applicable to relevant devices supporting FnNAS.
- The [amlogic-s9xxx-openwrt](https://github.com/ophub/amlogic-s9xxx-openwrt) project provides the `OpenWrt` system for use in boxes, which is also applicable to relevant devices supporting FnNAS.
- [unifreq](https://github.com/unifreq) has created `OpenWrt` systems for more boxes such as Amlogic, Rockchip, and Allwinner. It is a benchmark in the TV box community and is recommended for use.
- [cooip-jm](https://github.com/cooip-jm) shared many usage methods for applications like Armbian, OpenWrt, lxc, docker, AdGuard, etc., in his [wiki](https://github.com/cooip-jm/About-openwrt/wiki), which is recommended for learning.

## Links

- [fnnas.com](https://fnnas.com)
- [unifreq](https://github.com/unifreq)
- [coolsnowwolf](https://github.com/coolsnowwolf/lede)

## License

The fnnas © OPHUB is licensed under [GPL-2.0](LICENSE)
