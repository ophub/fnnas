#!/bin/sh
# Compatibility shim: the real work lives in /usr/local/sbin/r28s-hwfix.sh
# (kept because earlier images / udev rules referenced this file name).
exec /usr/local/sbin/r28s-hwfix.sh "$@"
