#!/bin/sh
# Render render.html to entry.png with headless Chromium (1024x1024).
set -e
cd "$(dirname "$0")"
CHROME="$HOME/.cache/ms-playwright/chromium-1255/chrome-linux64/chrome"
"$CHROME" --headless --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1024,1024 \
  --virtual-time-budget=2000 \
  --screenshot="$PWD/entry.png" "file://$PWD/render.html"
ls -l entry.png
