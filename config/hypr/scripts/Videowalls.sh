#!/bin/bash
## Files

iDIR="$HOME/.config/dunst/icons"
Pywalvideo="$HOME/Pictures/Video-Wallpapers/Pywal/"
VideoWalls="$HOME/Pictures/Video-Wallpapers/"
notification() {
	notify-send -t 2500 -h string:x-canonical-private-synchronous:sys-notify -u normal -i "$iDIR/picture.png" "Changed Wallpaper: " "$@"
}

menu() {
	printf "1. Noah L2d\n"
	printf "2. Arona Stargazing\n"
	printf "3. Arona Stargazing Classroom\n"
	printf "4. Catgirl\n"
	printf "5. Catgirl Clouds\n"
	printf "6. Elaina\n"
	printf "7. Ganyu\n"
	printf "8. Hifumi L2d\n"
	printf "9. Hilda Pokemon \n"
	printf "10. Hina 😭\n"
	printf "11. Kazusa L2d\n"
	printf "12. Last Origin\n"
	printf "13. Mari L2d\n"
	printf "14. Munchlax\n"
	printf "15. Nier Automata\n"
	printf "16. Pixel City\n"
	printf "17. Pixel Street\n"
	printf "18. Saber\n"
	printf "19. Shiroko\n"
	printf "20. Shiroko Bicycle\n"
	printf "21. Snow Pixel\n"
	printf "22. Suipiss\n"
	printf "23. Texas\n"
	printf "24. VA-11 Hall-A\n"
	printf "25. 😭\n"
}
main() {
	choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-short.rasi | cut -d. -f1)

	case $choice in
	1)
		notification "Noah L2d"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Noah-L2d.mp4 &
		wpg -n -s $Pywalvideo/Noah-L2d.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	2)
		notification "Arona Stargazing"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Arona-Stargazing.mp4 &
		wpg -n -s $Pywalvideo/Arona-Stargazing.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	3)
		notification "Arona Stargazing Classroom"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Arona-Stargazing-Classroom.mp4 &
		wpg -n -s $Pywalvideo/Arona-Stargazing-Classroom.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	4)
		notification "Catgirl"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Catgirl.mp4 &
		wpg -n -s $Pywalvideo/Catgirl.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	5)
		notification "Catgirl Clouds"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Catgirl-Clouds.mp4 &
		wpg -n -s $Pywalvideo/Catgirl-Clouds.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	6)
		notification "Elaina"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Elaina.mp4 &
		wpg -n -s $Pywalvideo/Elaina.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	7)
		notification "Ganyu"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Ganyu-Flower.mp4 &
		wpg -n -s $Pywalvideo/Ganyu-Flower.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	8)
		notification "Hifumi L2d"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Hifumi-L2d.mp4 &
		wpg -n -s $Pywalvideo/Hifumi-L2d.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	9)
		notification "Hilda Pokemon"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Hilda-Pokemon.mp4 &
		wpg -n -s $Pywalvideo/Hilda-Pokemon.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	10)
		notification "Hina 😭 "
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Hina😭.mp4 &
		wpg -n -s $Pywalvideo/Hina😭.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	11)
		notification "Kazusa L2d"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Kazusa-L2d.mp4 &
		wpg -n -s $Pywalvideo/Kazusa-L2d.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	12)
		notification "Last Origin"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Last-Origin.mp4 &
		wpg -n -s $Pywalvideo/Last-Origin.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	13)
		notification "Mari L2d"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Mari-L2d.mp4 &
		wpg -n -s $Pywalvideo/Mari-L2d.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	14)
		notification "Munchlax"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Munchlax.mp4 &
		wpg -n -s $Pywalvideo/Munchlax.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	15)
		notification "Nier Automata"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Nier-Automata.mp4 &
		wpg -n -s $Pywalvideo/Nier-Automata.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	16)
		notification "Pixel City"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Pixel-City.mp4 &
		wpg -n -s $Pywalvideo/Pixel-City.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	17)
		notification "Pixel Street"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Pixel-Street.mp4 &
		wpg -n -s $Pywalvideo/Pixel-Street.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	18)
		notification "Saber"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Saber.mp4 &
		wpg -n -s $Pywalvideo/Saber.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	19)
		notification "Shiroko"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Shiroko.mp4 &
		wpg -n -s $Pywalvideo/Shiroko.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	20)
		notification "Shiroko Bicycle"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Shiroko-Bicycle.mp4 &
		wpg -n -s $Pywalvideo/Shiroko-Bicycle.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	21)
		notification "Snow-Pixel"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Snow-Pixel.mp4 &
		wpg -n -s $Pywalvideo/Snow-Pixel.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	22)
		notification "Suipiss"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Suipiss.mp4 &
		wpg -n -s $Pywalvideo/Suipiss.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	23)
		notification "Texas"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/Texas.mp4 &
		wpg -n -s $Pywalvideo/Texas.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	24)
		notification "VA-11 Hall-A"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/VA-11_Hall-A.mp4 &
		wpg -n -s $Pywalvideo/VA-11_Hall-A.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;
	25)
		notification "😭"
		pkill mpvpaper &
		pkill swww
		mpvpaper -p -o "no-audio loop" DP-1 $VideoWalls/😭.mp4 &
		wpg -n -s $Pywalvideo/😭.png
		gsettings set org.gnome.desktop.interface gtk-theme FlatColor
		pywalfox update
		swaync-client -rs
		pkill -USR2 cava
		exec $HOME/.config/hypr/scripts/PywalSwww.sh &

		exec $HOME/.config/hypr/scripts/Refresh.sh

		return
		;;

	esac
}

pkill -f http && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/music.png" "Online Music stopped" || main
