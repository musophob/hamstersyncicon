#!/bin/sh

# quit BTSYNC
killAll BitTorrent\ Sync
sleep 3

# Set location of this script and BTSYNC app
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BTAPP=/Applications/BitTorrent\ Sync.app/Contents/Resources

# make a backup of original icons from Bittorrent
mkdir "$BTAPP/orig_trayIcons"
cp "$BTAPP"/tray* "$BTAPP/orig_trayIcons"
rm -rf "$BTAPP"/tray*

# copy new icons from script directory to the BTSYNC app
cp "$DIR"/tray* "$BTAPP"

# re-open BTSYNC 
sleep 3
open /Applications/BitTorrent\ Sync.app