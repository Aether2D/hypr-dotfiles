#!/bin/bash

# Check if mpd is running
# -x flag only match processes whose name (or command line if -f is
# specified) exactly match the pattern.

if pgrep -x "mpd" >/dev/null; then
	echo "mpd already running"
else
	mpd
fi
