" TODO what is?
set shiftround
set ai
set si
set wrap
set lazyredraw

" general settings
""""""""""""""""""""""""""""""""""""""""""""""
silent execute '!stty -ixon -ixoff'

set nocompatible
set mousehide

execute pathogen#infect()

set linespace=3

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

set number

" general mapping
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <space> :
let mapleader = ","
let g:mapleader = ","

noremap <c-s> :update<cr>
vnoremap <c-s> <esc>:update<cr>
inoremap <c-s> <esc>:update<cr>

noremap <c-q> :q!<cr>
vnoremap <c-q> <esc>:q!<cr>
inoremap <c-q> <esc>:q!<cr>

noremap <c-h> :tabp<cr>
vnoremap <c-h> <esc>:tabp<cr>
inoremap <c-h> <esc>:tabp<cr>

noremap <c-l> :tabn<cr>
vnoremap <c-l> <esc>:tabn<cr>
inoremap <c-l> <esc>:tabn<cr>

" better code intention
vnoremap < <gv
vnoremap > >gv

noremap <leader>s :sort<cr>
" delete trailing spaces
noremap <F4> :%s/\s\+$//g<cr>:update<cr>
" replace tabs with spaces
noremap <F5> :%s/\t/  /g<cr>:update<cr>

" search settings
""""""""""""""""""""""""""""""""""""""""""""""
set incsearch
set ignorecase
set smartcase
set hlsearch

" color settings
""""""""""""""""""""""""""""""""""""""""""""""
colorscheme railscasts

autocmd colorscheme * highlight LineNr ctermbg=0
autocmd colorscheme * highlight Search cterm=reverse ctermbg=NONE

set colorcolumn=80
autocmd colorscheme * highlight ColorColumn ctermbg=0

" backup and history settings
""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile
set history=700
set undolevels=700

" syntax
""""""""""""""""""""""""""""""""""""""""""""""
syntax on

filetype on
filetype plugin on
filetype indent on

" plugin settings
""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

map <c-p> :NERDTreeToggle<cr>

" NERDCommenter
map <c-c> <leader>c<space>

" Ctrl-P
let g:ctrlp_map='<c-o>'

