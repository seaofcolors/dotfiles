#!/bin/sh

sleep 4

if ! pgrep waybar > /dev/null
then
  echo "no waybar"
  waybar &
fi
