#!/bin/bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Kill already running process
_ps=(rofi)
for _prs in "${_ps[@]}"; do
	if [[ $(pidof ${_prs}) ]]; then
		pkill ${_prs}
	fi
done
#Reload waybar css and config
killall -SIGUSR2 waybar

#Check if waybar is already running, if not exec waybar
${SCRIPTSDIR}/waybarcheck.sh &

# Lauch notification daemon (dunst)
#${SCRIPTSDIR}/Dunst.sh &
# Lanuch statusbar (waybar)
#${SCRIPTSDIR}/Waybar.sh &
