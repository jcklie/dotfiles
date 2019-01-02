#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if [ `hostname` == "desktop-184" ]
then
    xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-3 --off --output DP-2 --off --output DP-1 --off --output HDMI-2 --mode 1920x1080 --pos 1920x0 --rotate normal
elif [ `hostname` == "jck-macbook" ]
then
else
    echo "Unknown hostname ${`hostname`}!"
fi