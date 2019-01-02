#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if [ `hostname` == "desktop-184" ]
then
    for MONITOR in HDMI-1 HDMI-2; do
        echo $MONITOR
        MONITOR=$MONITOR HEIGHT=27 TRAY_SIZE=20 polybar main-bottom &
    done
elif [ `hostname` == "jck-macbook" ]
then
    MONITOR=eDP1 HEIGHT=50 TRAY_SIZE=32 polybar main-bottom &
else
    echo "Unknown hostname ${`hostname`}!"
fi


