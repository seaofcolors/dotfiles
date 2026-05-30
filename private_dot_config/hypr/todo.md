# Introduction

This file lists things that I might want to do in the future to make the system even better.


# Idle and suspend

Check the idle suspend settings. I am using a suspend inhibitor in the waybar. But does it really suspend if it is off? I am wondering, since hypridle.conf has that part commented out.

There are external options like vigiland, but I don't know if they offer anything new or anything better.


# Nvidia setup

It seems to be working just fine right now. Hyprland and apps run on AMD by default. Prime-run executed games run on NVIDIA.

There is one tiny glitch: The python script of proton-vpn seems to be running on NVIDIA. Not sure why.

I need to validate multi monitor setups.

I might want to look into manually prodding the hotplug listener that turns on external screens during wakeup from suspend. That might turn external screens on automatically, which would be nice.

There are a bunch of settings commented out in hypr/configs/environment. I don't seem to need them. But if I do, I should also read the hyprland FAQ on NVIDIA and hybrid graphics:
https://wiki.hypr.land/Configuring/Advanced-and-Cool/Multi-GPU/
https://wiki.hypr.land/Nvidia/

In case of crashes with Firefox, there is a recommended line I encountered:
env = GBM_BACKEND,nvidia-drm


# Info screen (ws 10)

I might want to migrate displaying the cheat sheet on workspace 10 from feh to awww.


# Desktop password managers

I don't want both KDE Wallet and the Gnome keychain thingy. And the latter seems to have some bug. I need to look into getting rid of one. I might also consider using KeePassXC instead.
https://wiki.archlinux.org/title/KeePass


# Notifications

dunstrc's line
>  dmenu = /usr/bin/rofi -config "$HOME/.config/rofi/notification.rasi" -dmenu -p dunst:
is severely broken. It freezes before it starts and I don't want to use rofi anyway.

I want to try
> /usr/bin/wofi -dmenu -p dunst
or something like that instead. Or I need to either go back to dmenu or get rid of it entirely.


# Power saving

If I find that hyprland uses to much battery time, I might want to look into
> system76-power
Unfortunately, though, the gnome shell plugin wouldn't work on hyprland.


# Workspace switching with mouse wheel

Add workspace switching left and right with mouse wheel scroll down and up to waybar's workspace module. So far I can only switch with three finger left and right swipe on the trackpad or with $mod and mouse wheel.
See https://github.com/Alexays/Waybar/issues/4629

