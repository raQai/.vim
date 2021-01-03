set shiftround
set si
set wrap

" general settings
set nocompatible
set mousehide

set linespace=3

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set backspace=2

set textwidth=0
set fillchars=""

set autoread

" line number
set number
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


highlight linenr ctermbg=24 ctermfg=3

" search highlight
highlight search cterm=reverse ctermbg=NONE

" cursor line
set cursorline
highlight cursorline cterm=NONE ctermbg=24

" color column
set colorcolumn=80
highlight colorcolumn ctermbg=24

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
cmap jj <esc>

imap kk <esc>
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

inoremap {     {}<left>
inoremap {<cr> {<cr>}<esc>0
inoremap {{    {
inoremap {}    {}

vnoremap <leader>{ c{}<esc>P

" wipe out all buffers
noremap <silent> <leader>wa :1,9000bwipeout<cr>
" cd to the directory containing the file in the buffer
noremap <silent> <leader>cd :lcd %:h<cr>
" delete trailing spaces
noremap <silent> <F4> :%s/\s\+$//g<cr>:update<cr>
" replace tabs with spaces
noremap <silent> <F5> :%s/\t/  /g<cr>:update<cr>
