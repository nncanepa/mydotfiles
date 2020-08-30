#!/bin/bash

apps=("udiskie"  "xfce4-clipman" "cbatticon" "pa-applet" "flameshot" "picom" "indicator-sound-switcher")

for app in ${apps[*]}; do
    echo $app
    killall -q $app 
    while pgrep -u $UID -x $app > /dev/null; do sleep 1;done;
done

