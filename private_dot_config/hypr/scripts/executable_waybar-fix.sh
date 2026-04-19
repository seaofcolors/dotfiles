#!/bin/sh

sleep 4

if pgrep -x "waybar" > /dev/null
then
    echo "Waybar is running"
else
    echo "Starting waybar"
    waybar &
fi
