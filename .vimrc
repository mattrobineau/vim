syntax on

set nu rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set hlsearch
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'mattrobineau/vim-monochrome'
Plug 'baskerville/bubblegum'
Plug 'nowk/genericdc'

call plug#end()

let g:monochrome_italic_comments=1
" colorscheme bubblegum-256-dark
colorscheme monochrome
" colorscheme genericdc
set background=dark
