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

" make exiting to normal mode a bit easier
:imap jj <Esc>
:imap kk <Esc>
:imap jk <Esc>

" sane leader key
let mapleader=","

" NERDTree
nnoremap <Leader>t :NERDTreeToggle<Cr>

" get to the command bar easily in insert mode
:imap ::: <Esc>:
:imap /// <Esc>/

" make j/k move to next visual line instead of physical line
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" easier jumping to beginning/end of line
nnoremap B ^
nnoremap E $

" insert new line without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" jump to end of word and insert
nnoremap W ea

" easy spelling suggestion accepting and toggling spelling on/off
nnoremap Z [s1z=`]
nnoremap <Leader>s :setlocal spell! spelllang=en_us<CR>:

" word count
nnoremap <Leader>c ggVGg<C-G>``

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
