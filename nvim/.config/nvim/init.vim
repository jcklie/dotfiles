set nocompatible " this is redundant, but I prefer explicit settings over implicit/default behavior
filetype plugin on
syntax on

set guicursor=      " Always use the block cursor
set relativenumber  " Use relative numbers
set nu              " Shows current line number
set nohlsearch      " No highlights when searching
set hidden          " Do not close buffers that are in the background
set noerrorbells    " Do not ring on error
set nowrap          " No wrapping
set smartcase       " Simple search if lower case, case sensitive if query has upper case letter
set ignorecase      " Case insensitive search
set noswapfile      " No swap file writing
set nobackup        " No backup files
set undodir=~/.vim/undodir
set undofile
set incsearch       " Search while typing
set scrolloff=8     " Scroll earlier
set termguicolors   " Use color scheme of my console
set signcolumn=yes
set colorcolumn=100

" Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Plugins
call plug#begin('~/.vim/plugged')
    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    Plug 'gruvbox-community/gruvbox'
call plug#end()

" Gruvbox
colorscheme gruvbox
highlight normal guibg=none

" Leader
let mapleader = " "

" Telescope
nnoremap