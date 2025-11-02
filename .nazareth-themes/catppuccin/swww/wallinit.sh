#!/usr/bin/env bash


while ! swww query >/dev/null 2>&1; do
    notify-send -t 2000 "No swww instance found. Starting Swww"
    swww-daemon &
    sleep 1
done


WALLPAPER_DIR="$HOME/.nazareth-themes/catppuccin/swww/wallpapers"

CURRENT_WALLPAPER_PATH=$(swww query | grep 'currently displaying:' | awk -F 'image: ' '{print $2}' | tr -d '[:space:]')

CURRENT_WALLPAPER_NAME=$(basename "$CURRENT_WALLPAPER_PATH")


WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$CURRENT_WALLPAPER_NAME" | shuf -n 1)

swww img $WALLPAPER --transition-type any --transition-duration 0.8 --transition-fps 60
