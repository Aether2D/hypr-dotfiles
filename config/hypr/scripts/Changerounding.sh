#!/bin/bash

STATE=$(hyprctl -j getoption decoration:rounding | jq ".int")

if [ "${STATE}" == "10" ]; then
	hyprctl keyword decoration:rounding 0
	notify-send "Rounded Corners OFF"
  rm ~/.config/swaync/style.css
  ln ~/wpg-templates/SwayNC/No_Rounded_Corners/style.css ~/.config/swaync/style.css
  swaync-client -rs
  pkill rofi
  rm ~/.config/rofi/config.rasi
  rm ~/.config/rofi/config-long.rasi
  rm ~/.config/rofi/config-short.rasi
  cp ~/.config/rofi/no_rounding/config.rasi ~/.config/rofi/
  cp ~/.config/rofi/no_rounding/config-long.rasi ~/.config/rofi/
  cp ~/.config/rofi/no_rounding/config-short.rasi ~/.config/rofi/
else
	hyprctl keyword decoration:rounding 10
	notify-send "Rounded Corners ON"
  rm ~/.config/swaync/style.css
  ln ~/wpg-templates/SwayNC/style.css ~/.config/swaync/style.css
  swaync-client -rs
  pkill rofi
  rm ~/.config/rofi/config.rasi
  rm ~/.config/rofi/config-long.rasi
  rm ~/.config/rofi/config-short.rasi
  cp ~/.config/rofi/rounding/config.rasi ~/.config/rofi/
  cp ~/.config/rofi/rounding/config-long.rasi ~/.config/rofi/
  cp ~/.config/rofi/rounding/config-short.rasi ~/.config/rofi/
fi
