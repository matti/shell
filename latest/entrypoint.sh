#!/usr/bin/env bash
set -euo pipefail
export DISPLAY=:0

set +e
  rm -rf /tmp/*.* >/dev/null 2>&1
set -e

Xvfb :0 -screen 0 1366x768x24 >/dev/null 2>&1 &

while true; do
  set +e
    xdpyinfo -display :0 >/dev/null 2>&1
    xdpyinfo_code=$?
  set -e
  if [ "$xdpyinfo_code" = "0" ]; then
    break
  fi
  sleep 0.1
done

x11vnc -shared -forever -passwd secret >/dev/null 2>&1 &
fluxbox >/dev/null 2>&1 &
xeyes >/dev/null 2>&1 &
chromium-browser --no-sandbox --disable-dev-shm-usage --disable-notifications >/dev/null 2>&1 &

cd /opt/novnc
  utils/launch.sh --listen 15900 --vnc localhost:5900 >/dev/null 2>&1 &
cd /root

exec /root/go/bin/gotty -w -term xterm zsh
