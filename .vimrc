" general settings
set nocompatible
set mousehide
set linespace=3
set tabstop=3
set softtabstop=3
set shiftwidth=3
set noexpandtab
set number

" search settings
set incsearch
set ignorecase
set smartcase

" color settings
colorscheme railscasts
hi LineNr ctermbg=0
hi Search ctermbg=NONE

" backup settings
set backup
set undofile
silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo

" syntax and autocomplete settings
syntax on

filetype on
filetype plugin on
filetype indent on

set omnifunc=phpcomplete#CompletePHP

execute pathogen#infect()

" NERDTree settings
autocmd VimEnter * if !argc() | NERDTree | endif
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Ctrl-P settings
set runtimepath^=~/.vim/bundle/ctrlp.vim

" mapping
nmap <space> :

map <c-l> :tabn<cr>
map <c-h> :tabp<cr>
map <c-n> :NERDTreeToggle<cr>

