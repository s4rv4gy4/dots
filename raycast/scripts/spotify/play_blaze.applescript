#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title play the blaze
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/spotify.png
# @raycast.packageName spotify

# Documentation:
# @raycast.description play the blaze playlist on spotify
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
    play track "spotify:playlist:37i9dQZF1DZ06evO0UzLaq"
end tell

# a small hack to hide spotify
# after successful execution
tell application "System Events"
    set visible of process "Spotify" to false
end tell

# log, and alert about execution
log "playing, the blaze! playlist."