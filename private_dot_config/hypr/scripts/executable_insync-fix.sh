#!/bin/sh

sleep 14

if pgrep -x "insync" > /dev/null
then
    echo "Insync is running"
else
    echo "Starting insync"
    QT_QPA_PLATFORM=xcb insync start &
    now=`date +"%x %X"`
    echo "Insync fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
fi
