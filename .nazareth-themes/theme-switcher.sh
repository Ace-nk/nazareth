#! /bin/bash
chosen=$(printf "\n" | rofi -dmenu -i -theme "~/.config/rofi/custom/themeswitcher.rasi")

case "$chosen" in
   "") bash ~/.nazareth-themes/inits/catppuccin.sh ;;
   "") bash ~/.nazareth-themes/inits/gruvbox.sh ;;
   *) exit 1 ;;
esac
