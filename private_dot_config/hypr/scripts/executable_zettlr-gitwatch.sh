#!/bin/bash

now=`date +"%x %X"`
echo "Start gitwatch, ${now}." >> ~/.config/hypr/scripts/mylog.log
gitwatch -s 60 -r origin ~/Google\ Drive/04\ Life\ and\ Joy/Zettlr\ Notes/ &

now=`date +"%x %X"`
echo "Start zettlr, ${now}." >> ~/.config/hypr/scripts/mylog.log
zettlr

now=`date +"%x %X"`
echo "Zettlr quit, ${now}." >> ~/.config/hypr/scripts/mylog.log

sleep 70

now=`date +"%x %X"`
psgitres=`ps -aux |grep gitwatch | grep -v grep | awk '{ print $2 }'`
psinotres=`ps -aux |grep inotifywait | grep -v grep | awk '{ print $2 }'`
echo "Gitwatch status, ${now}: ${psgitres}." >> ~/.config/hypr/scripts/mylog.log
echo "Inotifywait status, ${now}: ${psinotres}." >> ~/.config/hypr/scripts/mylog.log

ps -aux | grep gitwatch | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep inotifywait | grep -v grep | awk '{ print $2 }' | xargs kill -9

now=`date +"%x %X"`
psgitres=`ps -aux |grep gitwatch | grep -v grep | awk '{ print $2 }'`
psinotres=`ps -aux |grep inotifywait | grep -v grep | awk '{ print $2 }'`
echo "Gitwatch status, ${now}: ${psgitres}." >> ~/.config/hypr/scripts/mylog.log
echo "Inotifywait status, ${now}: ${psinotres}." >> ~/.config/hypr/scripts/mylog.log
