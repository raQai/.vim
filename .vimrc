set nocompatible

set backup
set undofile

set mousehide
set linespace=3

silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo

syntax on

filetype on
filetype plugin on
filetype indent on

set tabstop=3
set softtabstop=3
set shiftwidth=3
set noexpandtab

set number
highlight LineNr ctermbg=0
colorscheme railscasts

set omnifunc=phpcomplete#CompletePHP

execute pathogen#infect()

autocmd VimEnter * if !argc() | NERDTree | endif
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

map <c-l> :tabn<cr>
map <c-h> :tabp<cr>
map <c-n> :NERDTreeToggle<cr>

set incsearch
set ignorecase
set smartcase

nmap <space> :
