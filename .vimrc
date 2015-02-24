" general settings
set nocompatible
set mousehide
set linespace=3
set tabstop=3
set softtabstop=3
set shiftwidth=3
set noexpandtab
set number

silent execute '!stty -ixon -ixoff'

" general mapping
nmap <space> :

nmap <c-s> :NERDTreeClose<cr>:w<cr>
imap <c-s> <esc>:w<cr>
vmap <c-s> <esc>:w<cr>

nmap <c-q> :q!<cr>
imap <c-q> <esc>:q!<cr>
vmap <c-q> <esc>:q!<cr>

" search settings
set incsearch
set ignorecase
set smartcase

" color settings
colorscheme railscasts
autocmd colorscheme * highlight LineNr ctermbg=0
autocmd colorscheme * highlight Search cterm=reverse ctermbg=NONE

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
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

map <c-l> :tabn<cr>
map <c-h> :tabp<cr>
map <c-n> :NERDTreeToggle<cr>

" NERDCommenter settings
nmap <c-c> <leader>c<space>
vmap <c-c> <leader>c<space>

" Ctrl-P settings
let g:ctrlp_map='<c-o>'

