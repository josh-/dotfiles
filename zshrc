# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# load a theme or use "random"
ZSH_THEME="mnml"

# show completion dots
COMPLETION_WAITING_DOTS="true"

# disable update check
DISABLE_AUTO_UPDATE="true"

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh nanoc git osx zsh-history-substring-search brew z)

source $ZSH/oh-my-zsh.sh

# vim mode
set -o vi

# PATH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
