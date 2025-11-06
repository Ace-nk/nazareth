#!/bin/bash

chosen=$(printf "󰐥\n\n󰠜" | rofi -dmenu -i -theme "~/.config/rofi/custom/themeswitcher.rasi")
case "$chosen" in
   "󰐥") poweroff ;;
   "") reboot ;;
   "󰠜") hyprctl dispatch exit ;;
   *) exit 1 ;;
esac
