#!/bin/sh

sleep 4

if pgrep -x "insync" > /dev/null
then
    echo "Insync is running"
else
    echo "Starting insync"
    env QT_QPA_PLATFORM=xcb insync start &
fi
