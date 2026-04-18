#!/bin/bash

gitwatch -s 60 -r origin ~/Documents/Zettlr\ Notes/ &
zettlr

sleep 70

kill %1
