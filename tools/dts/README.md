# HK1 RBOX K8 (RK3528) Device Tree Files

This directory contains the Device Tree Source (DTS), precompiled DTB, and device tree overlay (DTBO) for the **HK1 RBOX K8 (WiFi 6 AIC8800 Edition)**.

## Hardware Profile vs HK1 RBOX K8S

| Hardware Feature | HK1 RBOX K8 (This Board) | HK1 RBOX K8S (Existing Variant) |
| :--- | :--- | :--- |
| **SoC** | Rockchip RK3528 Quad-Core Cortex-A53 | Rockchip RK3528 Quad-Core Cortex-A53 |
| **WLAN Module** | AicSemi AIC8800D80 (WiFi 6 802.11ax) | Realtek RTL8733BS / RTL8822CS |
| **WLAN Interface** | SDIO (MMC1: `0xffc20000`) | SDIO (MMC1: `0xffc20000`) |
| **WLAN Power Supply** | Dedicated regulator via `GPIO3_B2` (pin 106) | System bus LDO |
| **WLAN Sleep Clock** | 32.768kHz external clock (`clkm0_32k_out`, GPIO3_C3) | Internal crystal / Not routed |
| **USB 3.0/2.0 VBUS** | Regulated 5V via `GPIO4_B4` (pin 140) | Standard default GPIO |
| **Front Panel Clock** | FD650 / FD628 2-Wire VFD (`GPIO4_A3`, `GPIO4_A2`) | Not present |

## Files in this Directory

- `rk3528-hk1-rbox-k8.dts`: Complete standalone Device Tree Source for HK1 RBOX K8.
- `rk3528-hk1-rbox-k8.dtb`: Precompiled binary Device Tree Blob (`dtc -I dts -O dtb`).
- `rk3528-hk1-k8-fix.dts`: Device tree overlay for systems running the K8S base DTB.
- `rk3528-hk1-k8-fix.dtbo`: Precompiled overlay blob.

## DTB Compilation

To recompile the DTS manually:

```bash
dtc -I dts -O dtb -o rk3528-hk1-rbox-k8.dtb rk3528-hk1-rbox-k8.dts
```
