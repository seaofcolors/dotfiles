#!/bin/sh

sleep 1

killall kded6

if pgrep -x "hyprpaper" > /dev/null
then
    echo "Hyprpaper is running"
else
    hyprpaper &
    now=`date +"%x %X"`
    echo "Hyprpaper fix executed, ${now}." >> mylog.log
fi

sleep 1

hyprctl hyprpaper wallpaper , ~/.config/backgrounds/arch-rainbow-catppuccin-mocha-2.png
