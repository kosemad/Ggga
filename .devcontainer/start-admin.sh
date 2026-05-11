#!/bin/sh
set -eu

if ! pgrep -f "python3 -m http.server 8080 --directory /opt/mrh-admin" >/dev/null; then
  nohup python3 -m http.server 8080 --directory /opt/mrh-admin >/tmp/mrh-admin.log 2>&1 &
fi
