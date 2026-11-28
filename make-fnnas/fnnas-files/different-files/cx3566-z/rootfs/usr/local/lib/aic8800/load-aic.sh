#!/bin/sh
# CX3566-Z AIC8800 loader.
# The bundled trim driver enumerates the chip but can never finish a scan;
# load the self-built AICSemi SDK V5.0 modules by path instead. The fdrv
# probe races the bsp chip-init (NULL deref in aicbsp_get_feature if fdrv
# probes first), so wait until bsp/mmc2 log activity settles before
# loading fdrv.
set -u
KO_DIR=/usr/local/lib/aic8800

# The kernel only trusts the upstream-signed regulatory database.
ln -sf /lib/firmware/regulatory.db-upstream /etc/alternatives/regulatory.db
ln -sf /lib/firmware/regulatory.db.p7s-upstream /etc/alternatives/regulatory.db.p7s

# Already up: nothing to do.
[ -e /sys/class/net/wlan0 ] && exit 0

modprobe cfg80211 2>/dev/null
modprobe bluetooth 2>/dev/null
[ -d /sys/module/aic8800_bsp ] || insmod "$KO_DIR/aic8800_bsp.ko"
echo fe2c0000.mmc > /sys/bus/platform/drivers/dwmmc_rockchip/unbind 2>/dev/null
sleep 2
echo fe2c0000.mmc > /sys/bus/platform/drivers/dwmmc_rockchip/bind 2>/dev/null

prev=0; stable=0
for i in $(seq 1 30); do
  n=$(dmesg | grep -ciE 'aic|mmc2')
  if [ "$n" = "$prev" ]; then stable=$((stable + 1)); else stable=0; fi
  [ "$stable" -ge 3 ] && break
  prev=$n; sleep 1
done

[ -d /sys/module/aic8800_fdrv ] || insmod "$KO_DIR/aic8800_fdrv.ko"
modprobe aic_btusb 2>/dev/null
exit 0
