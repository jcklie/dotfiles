set nocompatible
filetype plugin on
syntax on

" Leader
nnoremap <SPACE> <Nop>
let mapleader = " "
let maplocalleader = " "

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'vimwiki/vimwiki'
    Plug 'itchyny/lightline.vim'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
call plug#end()

" Use colorscheme
set termguicolors
set background=dark
colorscheme gruvbox

" Line numbers
set number
set ruler

" Long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Use spaces as tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Faster escaping
inoremap jj <ESC>

" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_dir_link = "index"

" itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" junegunn/fzf.vim
let g:fzf_layout = { 'window': 'enew' }
nnoremap <Leader>o :FZF<CR> 
nnoremap <Leader>b :buffers<CR>

" Windows paste
:source $VIMRUNTIME/mswin.vim
