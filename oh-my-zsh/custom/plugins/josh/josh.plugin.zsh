# set editor
export EDITOR='vim'

# autocomplete directories
c() { cd ~/Dropbox/Development/$1; }
_c() { _files -W ~/Dropbox/Development -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

desk() { cd ~/Desktop/$1; }
_desk() { _files -W ~/Desktop -/; }
compdef _desk desk

# aliases

alias ql="qlmanage -p &>/dev/null"

## git
alias gst='git status'
alias gd='git diff'
alias gcl='git clone'
alias gundo='git reset --soft HEAD~1' # will undo the last commit

## homebrew
alias bi='brew install'
alias bu='brew update'

## vim
alias v='vim'

## filesystem stuff
alias cdir='pwd | pbcopy' #copy current directory to clipboard

## DNS
alias dns='sudo killall mDNSResponder'

# Select the current directory in launchbar, optionally a file
lb () {
	if [[ $# = 1 ]]; then
		[[ -e "$(pwd)/$1" ]] && open "x-launchbar:select?file=$(pwd)/$1" || open "x-launchbar:select?file=$1"
	else
		open "x-launchbar:select?file=$(pwd)"
	fi
}
