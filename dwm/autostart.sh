#!/bin/sh
wal -R -n && xwallpaper --zoom "$(cat ~/.cache/wal/wal)"

slstatus &
picom --config ~/.config/picom/picom.conf &

# Startup scripts
~/scripts/updatenoti.sh &
