#!/bin/sh
set -eu

if ! pgrep -f "/usr/local/bin/xray -c /etc/config.json" >/dev/null; then
  sudo nohup /usr/local/bin/xray -c /etc/config.json >/tmp/xray.log 2>&1 &
fi
