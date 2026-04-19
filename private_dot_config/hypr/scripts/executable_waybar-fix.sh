#!/bin/sh

sleep 4

#if ! pgrep waybar > /dev/null
#then
#  waybar &
#fi


if pgrep waybar | grep "[0-9]" 
then
  echo "no"
else
  echo "yes"
  waybar &
fi
