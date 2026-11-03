#!/usr/bin/env bash
# ==============================================================================
# HK1 RBOX K8 Front Panel VFD Clock Installer
# License: MIT / GPL-2.0
# ==============================================================================

set -euo pipefail

if [[ $EUID -ne 0 ]]; then
    echo "Error: This script must be run as root (sudo bash install.sh)" >&2
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_PATH="/usr/local/bin/hk1-clock"
SERVICE_PATH="/etc/systemd/system/hk1-clock.service"

echo "==> Building hk1-clock from source..."
cd "${SCRIPT_DIR}"
make clean || true
make

echo "==> Installing binary to ${BIN_PATH}..."
install -m 755 hk1-clock "${BIN_PATH}"

echo "==> Installing systemd service to ${SERVICE_PATH}..."
install -m 644 hk1-clock.service "${SERVICE_PATH}"

echo "==> Reloading systemd daemon and enabling service..."
systemctl daemon-reload
systemctl enable --now hk1-clock.service

echo "==> HK1 RBOX K8 VFD Clock daemon successfully installed and started!"
