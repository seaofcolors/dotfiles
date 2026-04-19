#!/bin/sh

sleep 1

if ! pgrep hyprpaper > /dev/null
then
  hyprpaper &
fi

sleep 1

hyprctl hyprpaper wallpaper , ~/.config/backgrounds/arch-rainbow-catppuccin-mocha.png
