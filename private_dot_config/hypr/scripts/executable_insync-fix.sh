#!/bin/sh

sleep 14

if pgrep -x "insync" > /dev/null
then
    info "Insync is already running"
else
    echo "Starting insync"
    QT_QPA_PLATFORM=xcb insync start &
    info "Insync wasn't running, starting now"
    now=`date +"%x %X"`
    echo "Insync fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
fi
