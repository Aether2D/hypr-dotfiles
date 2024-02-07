#!/bin/bash

# Check if waybar is running
# -x flag only match processes whose name (or command line if -f is
# specified) exactly match the pattern.

if pgrep -x "waybar" >/dev/null; then
	echo "waybar already running"
else
	waybar
fi
