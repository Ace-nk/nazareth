#!/bin/bash

################
### Hyprland ###
################

unlink $HOME/.config/hypr/animation.conf
unlink $HOME/.config/hypr/style.conf

ln -s $HOME/.nazareth-themes/terrawood2/hyprland/animation.conf $HOME/.config/hypr
ln -s $HOME/.nazareth-themes/terrawood2/hyprland/style.conf $HOME/.config/hypr


hyprctl reload
