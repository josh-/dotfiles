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
silent !mkdir ~/.vim-temp > /dev/null 2>&1
set backupdir=~/.vim-temp
set directory=~/.vim-temp

" effective buffer management
set hidden

" make exiting to normal mode a bit easier
:imap jj <Esc>
:imap kk <Esc>
:imap jk <Esc>

" sane leader key
let mapleader=","

" scroll offset
set scrolloff=3

" NERDTree
nnoremap <Leader>t :NERDTreeToggle<Cr>

" make j/k move to next visual line instead of physical line
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" insert new line without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" jump to end of word and insert
nnoremap W ea

" easy spelling suggestion accepting and toggling spelling on/off
nnoremap Z [s1z=`]
:imap zz <Esc>[s1z=`]a
nnoremap <Leader>s :setlocal spell! spelllang=en_us<CR>

" word count
nnoremap <Leader>c g<C-G>

" marked.app
:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" formatting for Markdown lists
" set formatoptions=tcroqln
" set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-
let g:vim_markdown_folding_disabled=1

" prevent .netrwhist file creation
let g:netrw_dirhistmax = 0

" gundo
:nnoremap <leader>g :GundoToggle<CR>

" current word in system dictionary (copies word to d buffer)
nnoremap <Leader>d "dyiw :silent !open dict://<C-R>d<Cr>

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
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" select all
map <Leader>a ggVG

" incrementing & decrementing
nnoremap + <C-a>
nnoremap - <C-x>

" better searching
set ignorecase
set hlsearch
set incsearch
nmap <silent> <leader>n :silent :nohlsearch<CR>

" recognize .md files as markdown files
au BufRead,BufNewFile *.md set filetype=markdown

" two spaces for tabs instead of 4 for ruby
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2

" use UTF-8 encoding
set encoding=utf8
set termencoding=utf-8
set fileencodings=        " don't do any encoding conversion

" setup vim-airline
set lazyredraw
set laststatus=2
let g:airline_theme='lucius'

" setup vim-startify
let g:startify_custom_header =
      \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
