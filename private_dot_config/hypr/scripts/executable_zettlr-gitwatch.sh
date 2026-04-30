#!/bin/bash

echo "Start gitwatch, ${now}." >> ~/.config/hypr/scripts/mylog.log
gitwatch -s 60 -r origin ~/Google\ Drive/04\ Life\ and\ Joy/Zettlr\ Notes/ &
zettlr

sleep 70

ps -aux | grep gitwatch | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep inotifywait | grep -v grep | awk '{ print $2 }' | xargs kill -9
