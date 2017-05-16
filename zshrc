# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# load a theme or use "random"
ZSH_THEME="mnml"

# disable update check
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh nanoc git osx zsh-history-substring-search brew z zsh-syntax-highlighting dirhistory)

source $ZSH/oh-my-zsh.sh

# dirhistory bindings
bindkey "\033[1;2D" dirhistory_zle_dirhistory_back
bindkey "\033[1;2C" dirhistory_zle_dirhistory_future

# PATH
TEXPATH=/Library/TeX/texbin
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$TEXPATH
