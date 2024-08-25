#!/bin/sh

if [ $1 = "dark" ]; then
	THEME="dark"
else
	THEME="light"
fi

KITTY_PATH=$(which kitty | sed "s/MacOS\/kitty//g")
ICON_PATH=$KITTY_PATH"Resources/kitty.icns"

curl -o $ICON_PATH "https://raw.githubusercontent.com/DinkDonk/kitty-icon/main/kitty-${THEME}.icns"
rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
