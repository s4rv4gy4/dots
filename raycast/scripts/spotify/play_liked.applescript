#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title play liked
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/spotify.png
# @raycast.packageName spotify

# Documentation:
# @raycast.description play liked songs on spotify
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
	# set your username uri
	play track "spotify:user:31kymx7zaanvvsbik7aecl53vgom:collection"
end tell

# a small hack to hide spotify
# after successful execution
tell application "System Events"
	set visible of process "Spotify" to false
end tell

# log, and alert about execution
log "playing, liked songs!"
