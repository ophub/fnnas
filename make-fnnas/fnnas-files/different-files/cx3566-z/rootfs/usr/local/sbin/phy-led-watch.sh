#!/bin/bash
poke() { python3 /usr/local/lib/phy-led/set_led.py >/dev/null 2>&1; }
poke
ip monitor link dev eth0 2>/dev/null | while IFS= read -r line; do
    case "$line" in *"state UP"*) sleep 0.3; poke ;; esac
done