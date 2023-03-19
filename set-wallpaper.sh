#!/bin/bash

PAPER=$(realpath $1)
FILE="/home/chloe/.config/hypr/hyprpaper.conf"

echo "preload=$PAPER" > $FILE
echo "wallpaper=DP-1,$PAPER" >> $FILE
echo "wallpaper=HDM1-A-1,$PAPER" >> $FILE
