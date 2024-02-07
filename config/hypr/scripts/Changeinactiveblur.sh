#!/bin/bash
STATE=$(hyprctl -j getoption decoration:dim_inactive | jq ".int")

if [ "${STATE}" == "1" ]; then
	hyprctl keyword decoration:inactive_opacity 1
	hyprctl keyword decoration:dim_inactive 0
	notify-send "Inactive Blur OFF"
else
	hyprctl keyword decoration:inactive_opacity 0.8
	hyprctl keyword decoration:dim_inactive 1
	notify-send "Inactive Blur ON"
fi
