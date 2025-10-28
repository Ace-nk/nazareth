#!/bin/bash

################
### Hyprland ###
################

unlink $HOME/.config/hypr/animation.conf
unlink $HOME/.config/hypr/style.conf

ln -s $HOME/.nazareth-themes/gruvbox/hyprland/animation.conf $HOME/.config/hypr
ln -s $HOME/.nazareth-themes/gruvbox/hyprland/style.conf $HOME/.config/hypr

hyprctl reload

#############
### Kitty ###
#############

unlink $HOME/.config/kitty/current-theme.conf

ln -s $HOME/.nazareth-themes/gruvbox/kitty/current-theme.conf $HOME/.config/kitty

pkill -SIGUSR1 kitty

##############
### Waybar ###
##############

sed -i '3c\"~/.config/waybar/themes/gruvbox/config/config.jsonc"' $HOME/.config/waybar/config.jsonc
sed -i '1c\@import "themes/gruvbox/style/style.css";' $HOME/.config/waybar/style.css

killall waybar
waybar & disown

############
### Swww ###
############
swww-daemon & disown

exec $HOME/.nazareth-themes/gruvbox/swww/wallinit.sh
