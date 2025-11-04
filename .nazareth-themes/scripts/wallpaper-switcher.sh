#!/bin/bash

while ! swww query >/dev/null 2>&1; do
    notify-send -t 2000 "No swww instance found. Starting Swww"
    swww-daemon &
    sleep 1
done


dir="$HOME/.nazareth-themes/gruvbox/swww/wallpapers"
cd $dir
wallpaper=""
CURRENT_WALLPAPER_PATH=$(swww query | grep 'currently displaying:' | awk -F 'image: ' '{print $2}' | tr -d '[:space:]')
CURRENT_WALLPAPER_NAME=$(basename "$CURRENT_WALLPAPER_PATH")

wallpaper=$(for a in *.jpg *.png; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -dmenu -i -lines 4 -theme "~/.config/rofi/custom/wallpaperswitcher.rasi")

if [[ $wallpaper == $CURRENT_WALLPAPER_NAME ]]; then
   notify-send -t 2000 "Wallpaper already selected"
fi
swww img $wallpaper --transition-type any --transition-duration 0.8 --transition-fps 60

