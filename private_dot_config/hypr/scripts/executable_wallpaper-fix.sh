#!/bin/sh

sleep 1

if pgrep -x "hyprpaper" > /dev/null
then
    echo "Hyprpaper is running"
else
    echo "Starting hyprpaper"
    hyprpaper &
fi

sleep 1

hyprctl hyprpaper wallpaper , ~/.config/backgrounds/arch-rainbow-catppuccin-mocha.png
