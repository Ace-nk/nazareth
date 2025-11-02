#!/bin/bash

################
### Hyprland ###
################

sed -i "1c\source = ~/.config/hypr/themes/catppuccin/style.conf" $HOME/.config/hypr/theme.conf
sed -i '2c\source = ~/.config/hypr/themes/catppuccin/animation.conf' $HOME/.config/hypr/theme.conf

hyprctl reload

###########
### GTK ###
###########

gsettings set org.gnome.desktop.interface gtk-theme "catppuccin-mocha-teal-standard+default"

#############
### Kitty ###
#############

sed -i '5c\include themes/catppuccin.conf' $HOME/.config/kitty/kitty.conf

pkill -SIGUSR1 kitty

##############
### Waybar ###
##############

sed -i '3c\"~/.config/waybar/themes/catppuccin/config/config.jsonc"' $HOME/.config/waybar/config.jsonc
sed -i '1c\@import "themes/catppuccin/style/style.css";' $HOME/.config/waybar/style.css

killall waybar
waybar & disown

###############
### FIREFOX ###
###############


sed -i '2c\   --bg: rgb(17, 14, 31);' $HOME/.mozilla/firefox/3xc9zapl.Ace/chrome/userContent.css
sed -i '3c\   --fg:  #b4befe;' $HOME/.mozilla/firefox/3xc9zapl.Ace/chrome/userContent.css

############
### ROFI ###
############

sed -i '15c\@theme "~/.config/rofi/themes/catppuccin.rasi"' $HOME/.config/rofi/config.rasi


##############
### NEOVIM ###
##############

sed -i '4c\vim.cmd("colorscheme catppuccin")' $HOME/.config/nvim/init.lua
sed -i '7c\theme = "catppuccin"' $HOME/.config/nvim/lua/plugins/lualine.lua

############
### Swww ###
############
swww-daemon & disown

sed -i '11c\$wallswitch = $HOME/.nazareth-themes/catppuccin/swww/wallinit.sh' $HOME/.config/hypr/keybinds.conf

exec $HOME/.nazareth-themes/catppuccin/swww/wallinit.sh


