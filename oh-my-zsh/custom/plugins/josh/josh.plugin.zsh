# set editor
export EDITOR='vim'

# autocomplete directories
dev() { cd ~/Dropbox/Development/$1; }
_dev() { _files -W ~/Dropbox/Development -/; }
compdef _dev dev

home() { cd ~/$1; }
_home() { _files -W ~/ -/; }
compdef _home home

desk() { cd ~/Desktop/$1; }
_desk() { _files -W ~/Desktop -/; }
compdef _desk desk

lib() { cd ~/Library/$1; }
_lib() { _files -W ~/Library -/; }
compdef _lib lib

down() { cd ~/Downloads/$1; }
_down() { _files -W ~/Downloads -/; }
compdef _down down

engage() { cd ~/Dropbox/Engage/$1; }
_engage() { _files -W ~/Dropbox/Engage -/; }
compdef _engage engage

apps() { cd /Applications/$1; }
_apps() { _files -W /Applications -/; }
compdef _apps apps

uni() { cd ~/Dropbox/Uni/$1; }
_uni() { _files -W ~/Dropbox/Uni -/; }
compdef _uni uni

site() { cd ~/Dropbox/Site/$1; }
_site() { _files -W ~/Dropbox/Site -/; }
compdef _site site

# aliases

alias ql="qlmanage -p &>/dev/null"
alias p="python3"

## compress pdf with Ghostscript from https://blog.omgmog.net/post/compressing-pdf-from-your-mac-or-linux-terminal-with-ghostscript/
compresspdf () {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile=$2 $1
}

## git
alias gclo='git clone'
alias gundo='git reset --soft HEAD~1' # will undo the last commit
alias gadeleted='git rm $(git ls-files --deleted)'
alias clonedesk='cd ~/Desktop;git clone $(pbpaste)'

## homebrew
alias bi='brew install'
alias bu='brew update'
function bz () { brew upgrade $@ && brew cleanup $@ }

## vim
alias v='vim'

# https://twitter.com/olebegemann/status/918190328611471360
alias radar='{ sw_vers; echo "---"; xcodebuild -version; } | pbcopy'

## filesystem stuff
alias cdir='pwd | pbcopy' #copy current directory to clipboard

# Select the current directory in launchbar, optionally a file
lb () {
	if [[ $# = 1 ]]; then
		[[ -e "$(pwd)/$1" ]] && open "x-launchbar:select?file=$(pwd)/$1" || open "x-launchbar:select?file=$1"
	else
		open "x-launchbar:select?file=$(pwd)"
	fi
}
