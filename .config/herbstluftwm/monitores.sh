#!/bin/bash

monitores=$(xrandr --query | grep " connected" | wc -l)


if (($monitores == 2)); then
   xrandr --output DP-1 --mode 1920x1080 --primary --output eDP-1 --off 
elif (($monitores == 1)); then
   xrandr --output eDP-1 --mode 1920x1080 --primary
fi
