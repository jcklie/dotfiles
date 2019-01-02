#!/bin/bash

if [ `hostname` == "desktop-184" ]
then
    pidgin
    nextcloud
    clipit
    syncthing
elif [ `hostname` == "jck-macbook" ]
then
    wicd-client --tray
    battery-monitor
    cbatticonelse
else
    echo "Unknown hostname ${`hostname`}!"
fi
