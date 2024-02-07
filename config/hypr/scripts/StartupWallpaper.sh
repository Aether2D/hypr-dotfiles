#!/bin/bash

DIR=$HOME/Pictures/wallpapers/
PICS=($(find ${DIR} -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}

change_swww() {
	pkill swaybg
	swww query || swww init
	swww img ${RANDOMPICS}
}

change_current() {
	if pidof swaybg >/dev/null; then
		change_swaybg
	else
		change_swww
	fi
}

switch() {
	if pidof swaybg >/dev/null; then
		change_swww
	else
		change_swaybg
	fi
}

case "$1" in
"swaybg")
	change_swaybg
	;;
"swww")
	change_swww
	;;
"s")
	switch
	;;
*)
	change_current
	;;
esac

wpg -n -s ${RANDOMPICS}
gsettings set org.gnome.desktop.interface gtk-theme FlatColor
swaync-client -rs
exec $HOME/.config/hypr/scripts/PywalSwww.sh &

exec $HOME/.config/hypr/scripts/Refresh.sh
