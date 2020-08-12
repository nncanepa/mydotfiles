#!/bin/bash

variante=$(setxkbmap -query| grep variant | gawk '{print $2}')

if [ -z "$variante" ]; then
    setxkbmap -layout us -variant intl
elif [ -n "$variante" ]; then
   setxkbmap -layout us
fi
