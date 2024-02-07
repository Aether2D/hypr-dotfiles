#!/bin/bash
STATE=$(hyprctl -j getoption general:border_size | jq ".int")

if [ "${STATE}" == "3" ]; then
  hyprctl keyword general:border_size 0
	notify-send "Window Borders Disabled"
else
  hyprctl keyword general:border_size 3
	notify-send "Window Borders Enabled"
fi
