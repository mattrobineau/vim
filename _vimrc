"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


if has("gui_running")
    colorscheme solarized
    set background=light
    if has("gui_win32")
        set guifont=Powerline_Consolas:h09:cANSI
        set columns=150
    else
        set guifont=Powerline\ Consolas\ 10
    endif
else
    colorscheme zenburn
endif

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set incsearch
set hlsearch
set hls!
set ic!
set encoding=utf-8
set nu
"set clipboard=unnamedplus
" show powerline when no split
set laststatus=2
"set nocompatible

"split navigation (ctrl + h/j/k/l)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding with spacebar
nnoremap <space> za

"Quick run python3
nnoremap <buffer> <F5> :w<CR>:!H:\Python32\python.exe % <CR>

"docstrings for folded code
let g:SimpylFold_docstring_preview=1

"make python look pretty
let python_highlight_all=1

"Hide pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$']

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts=1

"PEP 8 python files
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent

"Flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=red
