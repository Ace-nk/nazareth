#! /bin/bash
chosen=$(printf "\n" | rofi -dmenu -i -theme "~/.config/rofi/custom/themeswitcher.rasi")

case "$chosen" in
   "") ~/.nazareth-themes/catppuccin/init.sh ;;
   "") ~/.nazareth-themes/gruvbox/init.sh ;;
   *) exit 1 ;;
esac
