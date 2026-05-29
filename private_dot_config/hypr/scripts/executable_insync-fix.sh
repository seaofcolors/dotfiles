#!/bin/sh

sleep 14

now=`date +"%x %X"`

if pgrep -x "insync" > /dev/null
then
    info "Insync is already running"
    echo "Insync didn't need its fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
else
    echo "Starting insync"
    QT_QPA_PLATFORM=xcb insync start &
    info "Insync wasn't running, starting now"
    echo "Insync fix executed, ${now}." >> ~/.config/hypr/scripts/mylog.log
fi
