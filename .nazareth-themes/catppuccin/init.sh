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
gsettings set org.gnome.desktop.interface icon-theme "Colloid-Pastel-Light"

nwg-look -x
pgrep -x nautilus && (pkill -x nautilus; sleep 0.5; nautilus &)

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

sed -i '16c\@theme "~/.config/rofi/themes/catppuccin/catppuccin.rasi"' $HOME/.config/rofi/config.rasi
sed -i '1c\@theme "~/.config/rofi/themes/catppuccin/colors.rasi"' $HOME/.config/rofi/custom/themeswitcher.rasi
sed -i '1c\@theme "~/.config/rofi/themes/catppuccin/colors.rasi"' $HOME/.config/rofi/custom/wallpaperswitcher.rasi


##############
### NEOVIM ###
##############

sed -i '4c\vim.cmd("colorscheme catppuccin")' $HOME/.config/nvim/init.lua
sed -i '7c\theme = "catppuccin"' $HOME/.config/nvim/lua/plugins/lualine.lua


###########
### ZSH ###
###########

sed -i '2c\local user_host="%B%(!.%{$fg[red]%}.%{$fg[white]%})%n@%m%{$reset_color%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '4c\local current_dir="%B%{$fg[black]%}%~ %{$reset_color%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme



sed -i '16c\ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}[%{$fg[white]%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '17c\ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}] %{$reset_color%}"' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '18c\ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[black]%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme
sed -i '19c\ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%} "' $HOME/.oh-my-zsh/custom/themes/ace-nazareth.zsh-theme

############
### Swww ###
############
swww-daemon & disown

sed -i '10c\dir="$HOME/.nazareth-themes/catppuccin/swww/wallpapers"' $HOME/.nazareth-themes/scripts/wallpaper-switcher.sh
exec $HOME/.nazareth-themes/catppuccin/swww/wallinit.sh


