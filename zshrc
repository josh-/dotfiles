# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# load a theme or use "random"
ZSH_THEME="mnml"

# show completion dots
COMPLETION_WAITING_DOTS="true"

# disable update check
DISABLE_AUTO_UPDATE="true"

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh nanoc git osx zsh-history-substring-search terminalapp brew)

source $ZSH/oh-my-zsh.sh

# vim mode
set -o vi

# PATH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rvm/bin:/usr/local/texlive/2012basic/bin/universal-darwin:/$HOME/.cabal/bin

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
