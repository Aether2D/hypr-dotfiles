#!/bin/bash

hyprDir="$HOME/.config/hypr/configs"

menu(){
  printf "1. view Env-variables\n"
  printf "2. view Rules\n"
  printf "3. view Execs\n"
  printf "4. view Key-Binds\n"
  printf "5. view Monitors\n"
  printf "6. view Hyprland-Settings\n"
}

main() {
    choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-long.rasi | cut -d. -f1)
    case $choice in
        1)
            kitty -e nano "$hyprDir/ENVariables.conf"
            ;;
        2)
            kitty -e nano "$hyprDir/WindowRules.conf"
            ;;
        3)
            kitty -e nano "$hyprDir/Execs.conf"
            ;;
        4)
            kitty -e nano "$hyprDir/Keybinds.conf"
            ;;
        5)
            kitty -e nano "$hyprDir/Monitors.conf"
            ;;
        6)
            kitty -e nano "$hyprDir/Settings.conf"
            ;;
        *)
            ;;
    esac
}

main
