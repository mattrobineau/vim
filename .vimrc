syntax on

set nu rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set hlsearch
set encoding=utf-8

set nocompatible    " required -- vimwiki
filetype plugin on  " required -- vimwiki

call plug#begin('~/.vim/plugged')

Plug 'mattrobineau/vim-monochrome'
Plug 'vimwiki/vimwiki'

call plug#end()

let g:monochrome_italic_comments=1
colorscheme monochrome
set background=dark

highlight Normal guifg=grey guibg=black

set noeb vb t_vb=   " remove bell sound
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
