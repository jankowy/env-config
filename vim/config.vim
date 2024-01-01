filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

source ~/.vim/plugins.vim

call vundle#end()
filetype plugin indent on

set number
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set scrolloff=6
set hlsearch
set relativenumber

filetype on
filetype indent on
filetype plugin on

let NERDTreeShowLineNumbers=1 " enable line numbers
let g:snipMate = { 'snippet_version' : 1 }

autocmd FileType nerdtree setlocal relativenumber " make sure relative line numbers are used

" Theme
set nocompatible
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:lightline = {
      \ 'colorscheme': 'onehalfdark',
      \ 'active': {
      \   'left': [ ['mode', 'paste' ],
      \           [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap <C-v> <ESC>"+pa
vmap <C-c> "+y
vmap <C-d> "+d
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

let g:svelte_preprocessors = ['typescript']
