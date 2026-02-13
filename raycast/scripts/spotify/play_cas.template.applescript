#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title play: cigarettes after sex
# @raycast.mode silent

# Optional parameters:
# @raycast.icon spotify.png
# @raycast.packageName spotify

# Documentation:
# @raycast.description play cigarettes after sex playlist on spotify
# @raycast.author s4rv4gy4
# @raycast.authorURL https://github.com/s4rv4gy4

# set system volume to 75
set volume output volume 75
# main block, for script
tell application "Spotify"
        # set spotify volume
	set sound volume to 75
	# turn off shuffling
        set shuffling to false
	# set your playlist uri
        play track "spotify:playlist:37i9dQZF1DZ06evO12tsHe"
end tell

# a small hack to hide spotify
# after successfuyl execution
tell application "System Events"
    set visible of process "Spotify" to false
end tell

# log, and alert about execution
log "playing, cigarettes after sex! playlist."
