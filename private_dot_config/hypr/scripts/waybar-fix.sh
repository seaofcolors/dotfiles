#!/bin/sh

sleep 4

if ! pgrep waybar > /dev/null
then
  waybar &
fi


