# set editor
export EDITOR='vim'

# autocomplete directories
desk() { cd ~/Desktop/$1; }
_desk() { _files -W ~/Desktop -/; }
compdef _desk desk

down() { cd ~/Downloads/$1; }
_down() { _files -W ~/Downloads -/; }
compdef _down down

## git
alias gclo='git clone'
alias gundo='git reset --soft HEAD~1' # will undo the last commit
alias gadeleted='git rm $(git ls-files --deleted)'

## homebrew
alias bi='brew install'
alias bu='brew update'

# encoding
function makemp4 () { ffmpeg -i $1 -c:v libx264 -preset medium -crf 23 -c:a aac -b:a 192k $2 }
