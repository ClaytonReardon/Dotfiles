#!/bin/bash

# Set display resolution, refresh rate, and position
xrandr --output HDMI-0 --mode 1920x1080 --pos 2560x360 --rotate normal --output DP-4 --primary --mode 2560x1440 --rate 165 --pos 0x0 --rotate normal

# Set wallpaper
/bin/nitrogen --restore

# Start polybar on both monitors
~/.config/polybar/launch.sh

# Start Picom. -b to start as daemon.
$HOME/.nix-profile/bin/picom -b --config $HOME/.config/picom/picom.conf

# Start Pulseaudio
pulseaudio -D

# Disable Screensaver and set Power Saver to 1 hour
xset s off
xset s noblank
xset s noexpose
xset s 0 0
xset dpms 0 0 3600

# Start Duplicati Backup
/bin/duplicati
