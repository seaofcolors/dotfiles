#!/bin/sh

sleep 10

now=`date +"%x %X"`

if pgrep -x "waybar" > /dev/null
then
    echo "Waybar is already running"
    echo "Waybar fix didn't need to be executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
else
    info "Waybar was not running."
    nohup bash -c "~/.config/hypr/scripts/waybar-launch.sh" > /dev/null 2>&1 &
    disown
    echo "Waybar fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
fi

info "Waybar reloaded"

