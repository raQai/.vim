" general settings
set nocompatible
set mousehide
set linespace=3
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set shiftround
set ai
set si
set wrap
set number

silent execute '!stty -ixon -ixoff'

" general mapping
nmap <space> :
let mapleader = ","
let g:mapleader = ","

map <c-l> :tabn<cr>
map <c-h> :tabp<cr>

nmap <c-s> :NERDTreeClose<cr>:update<cr>
imap <c-s> <esc>:update<cr>
vmap <c-s> <esc>:update<cr>

nmap <c-q> :q!<cr>
imap <c-q> <esc>:q!<cr>
vmap <c-q> <esc>:q!<cr>

noremap <leader>s :sort<cr>
" delete trailing spaces
"noremap <leader>c :%s/\s\+$//g<cr>

" moving of code blocks
vnoremap < <gv
vnoremap > >gv

" search settings
set incsearch
set ignorecase
set smartcase
set hlsearch
set lazyredraw

" color settings
colorscheme railscasts
autocmd colorscheme * highlight LineNr ctermbg=0
autocmd colorscheme * highlight Search cterm=reverse ctermbg=NONE

set colorcolumn=80
autocmd colorscheme * highlight ColorColumn ctermbg=0

" backup settings
set nobackup
set nowritebackup
set noswapfile
set history=700
set undolevels=700

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

map <c-p> :NERDTreeToggle<cr>

" NERDCommenter settings
nmap <c-c> <leader>c<space>
vmap <c-c> <leader>c<space>

" Ctrl-P settings
let g:ctrlp_map='<c-o>'

