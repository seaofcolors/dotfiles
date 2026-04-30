#!/bin/sh

sleep 4

if pgrep -x "waybar" > /dev/null
then
    echo "Waybar is running"
else
    waybar &
    now=`date +"%x %X"`
    echo "Waybar fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
fi
