#! /bin/bash
chosen=$(printf "\n" | rofi -dmenu -i -theme "~/.config/rofi/custom/themeswitcher.rasi")

case "$chosen" in
   "") bash ~/.nazareth-themes/catppuccin/init.sh ;;
   "") bash ~/.nazareth-themes/gruvbox/init.sh ;;
   *) exit 1 ;;
esac
