set shiftround
set si
set wrap

" general settings
set nocompatible
set mousehide

execute pathogen#infect()

set linespace=3

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set backspace=2

set number
set textwidth=0
set fillchars=""

set autoread

" color settings
colorscheme railscasts

autocmd colorscheme * highlight LineNr ctermbg=0
autocmd colorscheme * highlight Search cterm=reverse ctermbg=NONE

set colorcolumn=80
autocmd colorscheme * highlight ColorColumn ctermbg=0

" command line settings
set ch=2
set lazyredraw
set showcmd
set showmode
set vb
set laststatus=2
set wildmenu

" cursor settings
set scrolloff=6
set virtualedit=all

" allows unsaved buffers in the background
set hidden

" autocomplete settings
set showfulltag

" backup and history settings
set nobackup
set nowritebackup
set noswapfile
set history=250
set undolevels=1000

" syntax
syntax on

filetype on
filetype plugin on
filetype indent on

" search settings
set incsearch
set ignorecase
set smartcase
set hlsearch

" command settings
set timeoutlen=500

" general mapping
nnoremap <space> :
let mapleader = ","

imap jj <esc>
imap jj <esc>
cmap kk <esc>
cmap kk <esc>

noremap <c-h> :tabp<cr>
vnoremap <c-h> <esc>:tabp<cr>
inoremap <c-h> <esc>:tabp<cr>

noremap <c-l> :tabn<cr>
vnoremap <c-l> <esc>:tabn<cr>
inoremap <c-l> <esc>:tabn<cr>

" better code indentation
vnoremap < <gv
vnoremap > >gv

" wipe out all buffers
noremap <silent> <leader>wa :1,9000bwipeout<cr>
" cd to the directory containing the file in the buffer
noremap <silent> <leader>cd :lcd %:h<cr>
" delete trailing spaces
noremap <silent> <F4> :%s/\s\+$//g<cr>:update<cr>
" replace tabs with spaces
noremap <silent> <F5> :%s/\t/  /g<cr>:update<cr>
