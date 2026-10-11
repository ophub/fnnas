#!/bin/sh
# NanoPi R28S (RK3528A) fixups for FnNAS / any generic Linux:
#   1) deterministic ethernet names
#   2) WAN / LAN port LEDs (gpio4 PB1 / PB3) bound to the *right* port
#
# Hardware (official rev03 dts + wiki: "3 x GPIO controlled LEDs (SYS,LED1,LED2)"):
#   port "1" = SoC gigabit MAC  (Realtek RTL8211F, DT node ethernet@ffbe0000)  -> eth0
#   port "2" = PCIe gigabit NIC (Realtek RTL8111H)                             -> eth1
#   sys_led  = gpio4 PB0 (red,   heartbeat, handled by the DTB alone)
#   wan_led  = gpio4 PB1 (green, sits next to port "1")
#   lan_led  = gpio4 PB3 (green, sits next to port "2")
#
# Why this is needed:
#   * The kernel names interfaces in probe order; the PCIe NIC usually wins the
#     race, so eth0 ends up on port "2" and the numbers do not match the PCB.
#   * A "netdev" LED trigger never does anything until an interface name is
#     written to its device_name attribute.  Nothing in fnOS does that, which is
#     why both port LEDs stay dark.  (The vendor's FriendlyWrt does it from
#     /etc/config/system + /etc/init.d/led.)
#
# The interface for each LED is resolved from the *hardware* (device path), not
# from the current name, so the LEDs stay correct even if the names change.
#
# usage: r28s-hwfix.sh [all|names|leds|status|identify|swap|diag] [--wait N]
#   all       rename interfaces + bind LEDs (default)
#   names     only fix eth0/eth1
#   leds      only bind the port LEDs
#   status    print interfaces / LEDs / bindings (paste this when reporting)
#   diag      status + kernel log summary (errors, RTC, MAC)
#   identify  blink wan_led then lan_led so you can see which LED is which
#   swap      swap which LED belongs to which port, persist and re-apply
#
# Safe + idempotent: does nothing when everything is already correct.

set -u

CONF=/etc/default/r28s-hwfix
TMP0=r28sTMP0
TMP1=r28sTMP1
WAIT=0
CMD=all

log() {
	echo "r28s-hwfix: $*" >&2
	if command -v logger >/dev/null 2>&1; then
		logger -t r28s-hwfix "$*"
	fi
}

ipcmd() {
	if command -v ip >/dev/null 2>&1; then
		ip "$@"
	elif command -v busybox >/dev/null 2>&1; then
		busybox ip "$@"
	else
		return 127
	fi
}

# ---------------------------------------------------------------- parse args
while [ $# -gt 0 ]; do
	case "$1" in
	all | names | leds | status | identify | swap | diag) CMD="$1" ;;
	--wait)
		shift
		WAIT="${1:-0}"
		;;
	--wait=*) WAIT="${1#--wait=}" ;;
	-h | --help)
		sed -n '2,30p' "$0"
		exit 0
		;;
	*)
		log "unknown argument: $1"
		exit 2
		;;
	esac
	shift
done

# ------------------------------------------------------------ classification
# Sets NF_SOC / NF_PCI to the current interface names.
classify() {
	NF_SOC=
	NF_PCI=
	for i in /sys/class/net/*; do
		n="${i##*/}"
		case "$n" in
		lo | *.* | docker* | veth* | br-* | virbr* | tap* | tun* | wlan*) continue ;;
		esac
		[ -e "$i/device" ] || continue
		p="$(readlink -f "$i/device" 2>/dev/null)"
		case "$p" in
		*pci* | *[0-9a-f][0-9a-f][0-9a-f][0-9a-f]:[0-9a-f][0-9a-f]:*)
			[ -n "$NF_PCI" ] || NF_PCI="$n"
			;;
		*)
			[ -n "$NF_SOC" ] || NF_SOC="$n"
			;;
		esac
	done
	[ -n "$NF_SOC" ] && [ -n "$NF_PCI" ]
}

wait_ifaces() {
	[ "${1:-0}" -gt 0 ] 2>/dev/null || return 0
	i=0
	while [ "$i" -lt "$1" ]; do
		classify && return 0
		i=$((i + 1))
		sleep 1
	done
	classify
}

is_up() {
	ipcmd -o link show dev "$1" 2>/dev/null | grep -q ",UP"
}

# ------------------------------------------------------------------ naming
fix_names() {
	classify || return 1
	if [ "$NF_SOC" = "eth0" ] && [ "$NF_PCI" = "eth1" ]; then
		log "names already correct (eth0=$NF_SOC, eth1=$NF_PCI)"
		return 0
	fi
	was_soc=0
	was_pci=0
	is_up "$NF_SOC" && was_soc=1
	is_up "$NF_PCI" && was_pci=1
	log "renaming: $NF_SOC (SoC) -> eth0, $NF_PCI (PCIe) -> eth1"
	ipcmd link set dev "$NF_SOC" down 2>/dev/null
	ipcmd link set dev "$NF_PCI" down 2>/dev/null
	ipcmd link set dev "$NF_SOC" name "$TMP0" || {
		log "failed to rename $NF_SOC"
		return 1
	}
	if ! ipcmd link set dev "$NF_PCI" name "$TMP1"; then
		ipcmd link set dev "$TMP0" name "$NF_SOC"
		log "failed to rename $NF_PCI"
		return 1
	fi
	ipcmd link set dev "$TMP0" name eth0
	ipcmd link set dev "$TMP1" name eth1
	[ "$was_soc" = 1 ] && ipcmd link set dev eth0 up
	[ "$was_pci" = 1 ] && ipcmd link set dev eth1 up
	NF_SOC=eth0
	NF_PCI=eth1
	log "names fixed: eth0=$NF_SOC(SoC gmac/RTL8211F port 1) eth1=$NF_PCI(PCIe RTL8111H port 2)"
	return 0
}

# -------------------------------------------------------------------- LEDs
# which port each LED is wired to; override with /etc/default/r28s-hwfix
LED_PORT_WAN=soc
LED_PORT_LAN=pci
[ -r "$CONF" ] && . "$CONF"

led_find() {
	# led_find <preferred names...> ; prints the sysfs LED name
	for n in "$@"; do
		[ -d "/sys/class/leds/$n" ] && {
			echo "$n"
			return 0
		}
	done
	return 1
}

led_for() {
	# $1 = pattern used when the DTB has no label (e.g. wan / lan)
	case "$1" in
	wan)
		led_find wan_led led-wan led_wan wan green:wan led1 usr_led1
		;;
	lan)
		led_find lan_led led-lan led_lan lan green:lan led2 usr_led2
		;;
	esac
}

led_bind() {
	# $1 = wan|lan, $2 = interface name
	led="$(led_for "$1")" || {
		log "LED for $1 not found in /sys/class/leds (dtb without the leds node?)"
		return 1
	}
	[ -n "${2:-}" ] || {
		log "no interface for $led, skipped"
		return 1
	}
	d=/sys/class/leds/$led
	echo netdev >"$d/trigger" 2>/dev/null
	if [ ! -e "$d/device_name" ] && [ ! -e "$d/link" ]; then
		log "netdev trigger unavailable for $led (ledtrig-netdev module missing?)"
		return 1
	fi
	echo "$2" >"$d/device_name" 2>/dev/null
	read -r cur <"$d/device_name" 2>/dev/null
	if [ "$cur" != "$2" ]; then
		log "could not bind $led -> $2 (device_name=$cur)"
		return 1
	fi
	for m in link tx rx; do
		[ -e "$d/$m" ] && echo 1 >"$d/$m" 2>/dev/null
	done
	log "bound $led -> $2"
	return 0
}

fix_leds() {
	if ! classify; then
		# single interface or classification failed: fall back to plain names
		NF_SOC=eth0
		NF_PCI=eth1
		[ -e /sys/class/net/eth0 ] || NF_SOC=
		[ -e /sys/class/net/eth1 ] || NF_PCI=
	fi
	wif=""
	lif=""
	case "$LED_PORT_WAN" in
	soc) wif="$NF_SOC" ;;
	pci) wif="$NF_PCI" ;;
	esac
	case "$LED_PORT_LAN" in
	soc) lif="$NF_SOC" ;;
	pci) lif="$NF_PCI" ;;
	esac
	rc=0
	led_bind wan "$wif" || rc=1
	led_bind lan "$lif" || rc=1
	return $rc
}

# ---------------------------------------------------------------- status
do_status() {
	echo "== interfaces =="
	for i in /sys/class/net/*; do
		n="${i##*/}"
		case "$n" in lo | docker* | veth* | br-* | virbr* | tun* | tap*) continue ;; esac
		d="$(readlink -f "$i/device" 2>/dev/null)"
		[ -n "$d" ] || d="(virtual)"
		carrier="$(cat "$i/carrier" 2>/dev/null)"
		echo "  $n  carrier=${carrier:-?}  device=$d"
	done
	echo "== leds =="
	for i in /sys/class/leds/*; do
		l="${i##*/}"
		tr="$(cat "$i/trigger" 2>/dev/null | tr ' ' '\n' | grep '^\[' | tr -d '[]')"
		dn="$(cat "$i/device_name" 2>/dev/null)"
		br="$(cat "$i/brightness" 2>/dev/null)"
		echo "  $l  trigger=${tr:-none}  device_name=${dn:-none}  brightness=${br:-?}"
	done
	echo "== modules =="
	lsmod 2>/dev/null | grep -i ledtrig || echo "  (no ledtrig module loaded)"
	echo "== time / rtc =="
	date 2>/dev/null
	if command -v timedatectl >/dev/null 2>&1; then
		timedatectl 2>/dev/null | grep -iE "local time|time zone|synchronized|rtc time" | sed 's/^/  /'
	fi
	[ -e /dev/rtc0 ] && echo "  /dev/rtc0 present: $(readlink -f /dev/rtc0)" || echo "  (no /dev/rtc0 -- hym8563 not bound?)"
	command -v hwclock >/dev/null 2>&1 && echo "  hwclock -r: $(hwclock -r 2>&1 | head -1)"
	echo "== mac addresses =="
	for i in /sys/class/net/*; do
		n="${i##*/}"
		case "$n" in lo | docker* | veth* | br-* | virbr* | tun* | tap*) continue ;; esac
		[ -e "$i/device" ] || continue
		printf '  %-6s %s  addr_assign=%s\n' "$n" "$(cat "$i/address" 2>/dev/null)" \
			"$(cat "$i/addr_assign_type" 2>/dev/null)"
	done
	echo "  (addr_assign_type: 0=permanent 1=random 3=set by sw 4=set by hw)"
	echo "== config =="
	if [ -r "$CONF" ]; then cat "$CONF"; else echo "  (default: wan_led=port1/SoC, lan_led=port2/PCIe)"; fi
}

do_identify() {
	classify
	for spec in "wan:$NF_SOC" "lan:$NF_PCI"; do
		kind="${spec%%:*}"
		led="$(led_for "$kind")" || continue
		d=/sys/class/leds/$led
		echo ">>> $led ($kind) = ON for 4s -- look at the board now" >&2
		echo none >"$d/trigger" 2>/dev/null
		echo 1 >"$d/brightness" 2>/dev/null
		sleep 4
		echo 0 >"$d/brightness" 2>/dev/null
		echo "    $led off" >&2
	done
	# restore the real binding
	fix_leds
	echo "done - if the assignment is wrong, run: r28s-hwfix.sh swap" >&2
}

do_swap() {
	mkdir -p "$(dirname "$CONF")"
	if [ "${LED_PORT_WAN:-soc}" = "soc" ]; then
		new_wan=pci
		new_lan=soc
	else
		new_wan=soc
		new_lan=pci
	fi
	printf 'LED_PORT_WAN=%s\nLED_PORT_LAN=%s\n' "$new_wan" "$new_lan" >"$CONF"
	log "LED/port assignment swapped: wan_led=$new_wan lan_led=$new_lan"
	LED_PORT_WAN="$new_wan"
	LED_PORT_LAN="$new_lan"
	fix_leds
}

# -------------------------------------------------------- service self-enable
# Cheap (no daemon-reload) so it is safe to call from a udev RUN too; the unit
# becomes active on the next boot even if the image shipped without the symlink.
enable_service() {
	u=/etc/systemd/system/r28s-hwfix.service
	w=/etc/systemd/system/multi-user.target.wants/r28s-hwfix.service
	[ -e "$u" ] || return 0
	[ -e "$w" ] && return 0
	mkdir -p /etc/systemd/system/multi-user.target.wants 2>/dev/null
	ln -sf ../r28s-hwfix.service "$w" 2>/dev/null && log "enabled r28s-hwfix.service (next boot)"
	return 0
}

# --------------------------------------------------------------------- main
case "$CMD" in
names) fix_names ;;
leds) fix_leds ;;
status) do_status ;;
diag)
	do_status
	echo "== kernel log: errors/warnings =="
	dmesg 2>/dev/null | grep -iE "error|fail|warn|denied|panic|oops|call trace" | tail -40
	;;
identify) do_identify ;;
swap) do_swap ;;
all)
	wait_ifaces "$WAIT"
	fix_names
	fix_leds
	enable_service
	;;
esac

exit 0
