#!/usr/bin/env sh
set -e
export DISPLAY=:0
rm -rf /tmp/*.*

Xvfb :0 -screen 0 1600x900x24 &

while true; do
  set +e
    xdpyinfo -display :0 >/dev/null 2>&1
    xdpyinfo_code=$?
  set -e
  if [ "$xdpyinfo_code" = "0" ]; then
    echo "X started"
    break
  fi
  echo "Waiting X .."
  sleep 0.1
done

x11vnc -shared -forever -passwd secret &
fluxbox &
xeyes &
chromium-browser --no-sandbox --disable-dev-shm-usage --disable-notifications &

cd /opt/novnc
  utils/launch.sh --listen 15900 --vnc localhost:5900 &
cd /root

/root/go/bin/gotty -w -term xterm zsh
