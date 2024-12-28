"colo evening
set clipboard+=unnamedplus
filetype plugin indent on
set nocompatible
set number
syntax on

"set line number
set number

" use 4 spaces instead of tab
" copy indent from current line when starting a newline
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" save undo-tress in files
set undofile
set undodir=$HOME/nvimundo

" number of undo saved
set undolevels=10000
set undoreload=10000
