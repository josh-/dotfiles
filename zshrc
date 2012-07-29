# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# load a theme or use "random"
ZSH_THEME="mnml"

# show completion dots
COMPLETION_WAITING_DOTS="true"

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh git osx zsh-history-substring-search terminalapp brew)

source $ZSH/oh-my-zsh.sh

# PATH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
