#!/bin/bash

################
### Hyprland ###
################

sed -i "1c\source = ~/.config/hypr/themes/gruvbox/style.conf" $HOME/.config/hypr/theme.conf
sed -i '2c\source = ~/.config/hypr/themes/gruvbox/animation.conf' $HOME/.config/hypr/theme.conf

hyprctl reload

###########
### GTK ###
###########

gsettings set org.gnome.desktop.interface gtk-theme "Gruvbox-Dark"
gsettings set org.gnome.desktop.interface icon-theme "Colloid-Pastel-Yellow"

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

###############
### FIREFOX ###
###############


sed -i '2c\   --bg: #1a1a1a;' $HOME/.mozilla/firefox/3xc9zapl.Ace/chrome/userContent.css
sed -i '3c\   --fg: #ebdbb2;' $HOME/.mozilla/firefox/3xc9zapl.Ace/chrome/userContent.css

############
### ROFI ###
############

sed -i '15c\@theme "~/.config/rofi/themes/gruvbox/gruvbox.rasi"' $HOME/.config/rofi/config.rasi
sed -i '1c\@theme "~/.config/rofi/themes/gruvbox/colors.rasi"' $HOME/.config/rofi/custom/themeswitcher.rasi
sed -i '1c\@theme "~/.config/rofi/themes/gruvbox/colors.rasi"' $HOME/.config/rofi/custom/wallpaperswitcher.rasi


##############
### NEOVIM ###
##############


sed -i '4c\vim.cmd("colorscheme gruvbox")' $HOME/.config/nvim/init.lua
sed -i '7c\theme = "gruvbox"' $HOME/.config/nvim/lua/plugins/lualine.lua

###########
### ZSH ###
###########

sed -i '2c\local user_host="%B%(!.%{$fg[red]%}.%{$fg[default]%})%n@%m%{$reset_color%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '4c\local current_dir="%B%{$fg[white]%}%~ %{$reset_color%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme



sed -i '16c\ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}[%{$fg[default]%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '17c\ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}] %{$reset_color%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '18c\ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '19c\ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[default]%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme

############
### Swww ###
############

sed -i '10c\dir="$HOME/.nazareth-themes/gruvbox/swww/wallpapers"' $HOME/.nazareth-themes/scripts/wallpaper-switcher.sh
exec $HOME/.nazareth-themes/gruvbox/swww/wallinit.sh
