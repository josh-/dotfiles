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

# aliases
alias ql="qlmanage -p &>/dev/null"
alias p="python3"
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

## compress pdf with Ghostscript from https://blog.omgmog.net/post/compressing-pdf-from-your-mac-or-linux-terminal-with-ghostscript/
compresspdf () {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile=$2 $1
}

## git
alias gclo='git clone'
alias gundo='git reset --soft HEAD~1' # will undo the last commit
alias gadeleted='git rm $(git ls-files --deleted)'
alias clonedesk='cd ~/Desktop;git clone $(pbpaste)'

# https://twitter.com/mathias/status/1045312837671882752
alias gitsquash='git reset $(git commit-tree HEAD^{tree} -m "Initial commit")'

## homebrew
alias bi='brew install'
alias bu='brew update'
function bz () { brew upgrade $@ && brew cleanup $@ }

## vim
alias v='vim'

## docker
function docker-br () { docker build -t $@ . && docker run -it --rm $@ }

## youtube-dl
alias youtube-mp3='youtube-dl -x --audio-format mp3'

# https://twitter.com/olebegemann/status/918190328611471360
alias radar='{ sw_vers; echo "---"; xcodebuild -version; } | pbcopy'

# codesigning
function ent () { codesign -d -vvv --entitlements :- $@ }

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
