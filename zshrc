# path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# load theme
ZSH_THEME="mnml"

# disable update check
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

# load plugins from ~/.oh-my-zsh/plugins/*
plugins=(josh nanoc git osx zsh-history-substring-search brew z zsh-syntax-highlighting vscode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# PATH
export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:${GOPATH}/bin:${GOROOT}/bin:$PATH
