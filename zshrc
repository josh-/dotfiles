# path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# load theme
ZSH_THEME="mnml"

# disable update check
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh git brew z zsh-history-substring-search zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# PATH
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH
