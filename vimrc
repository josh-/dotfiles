" pathogen
call pathogen#infect()
call pathogen#helptags()

" change terminal title
set title

" line numbers
:set number

" colorscheme
colorscheme zellner

" set temporary & backup dirs
set backupdir=~/.vim-temp
set directory=~/.vim-temp

" exit to normal mode with 'jj'
:imap jj <Esc>

" insert new line without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" tab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" file-type hylighting & configuration
syntax on
filetype on
filetype plugin on
filetype indent on

" auto read when a file is changed from the outside
set autoread

" bash like keys for the vim command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" select all
map <Leader>a ggVG

" incrementing & decrementing
nnoremap + <C-a>
nnoremap - <C-x>

" commandbar height
set cmdheight=2

" ignore case when searching
set ignorecase
