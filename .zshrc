export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="ace-nazareth"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(
   git
   zsh-autosuggestions
   zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ns='sshpass -p '958640' ssh etnk@192.168.0.166'
alias hyprconfig='nvim ~/.config/hypr'
alias pc='~/.local/share/applications/Pseudo'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY


export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="Hyprland"
export WEBKIT_DISABLE_DMABUF_RENDERER=0

# Created by `pipx` on 2025-10-22 04:00:50
export PATH="$PATH:/home/Ace/.local/bin"
export PATH="$PATH:/home/Ace/.cargo/bin"


if [ -n "$PS1" ]; then
    fastfetch
fi
