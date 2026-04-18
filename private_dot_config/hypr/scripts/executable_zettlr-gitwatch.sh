#!/bin/bash

gitwatch -s 60 -r origin ~/Documents/Zettlr\ Notes/ &
zettlr

sleep 70

ps -aux | grep gitwatch | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep inotifywait | grep -v grep | awk '{ print $2 }' | xargs kill -9
