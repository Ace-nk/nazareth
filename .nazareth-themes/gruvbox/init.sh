#!/bin/bash

################
### Hyprland ###
################

sed -i "1c\source = ~/.config/hypr/themes/gruvbox/style.conf" $HOME/.config/hypr/theme.conf
sed -i '2c\source = ~/.config/hypr/themes/gruvbox/animation.conf' $HOME/.config/hypr/theme.conf

hyprctl reload

#############
### Kitty ###
#############

sed -i '5c\include themes/gruvbox.conf' $HOME/.config/kitty/kitty.conf


pkill -SIGUSR1 kitty

##############
### Waybar ###
##############

sed -i '3c\"~/.config/waybar/themes/gruvbox/config/config.jsonc"' $HOME/.config/waybar/config.jsonc
sed -i '1c\@import "themes/gruvbox/style/style.css";' $HOME/.config/waybar/style.css

killall waybar
waybar & disown

############
### ROFI ###
############

sed -i '15c\@theme ".config/rofi/themes/gruvbox.rasi"' $HOME/.config/rofi/config.rasi

############
### Swww ###
############
swww-daemon & disown

exec $HOME/.nazareth-themes/gruvbox/swww/wallinit.sh


