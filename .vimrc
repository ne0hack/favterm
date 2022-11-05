" ==== Vundle code ====

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==== Vundle code ====

set encoding=utf8

" remove the creation of .swp files
set noswapfile

" adds the ability to work with the mouse in vim (uncomment if needed)
"set mouse=a

" includes line numbering
set number

" setting up tabs for Python
au BufNewFile, BufRead *py
    \ set tabstop=4
    \ set softtabstop=0
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoident
    \ set fileformat=unix

" offset from the left edge
set foldcolumn=2

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with the spacebar
nnoremap <space> za

" beautiful folding
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" to ignore case when searching
set ignorecase
set smartcase

" highlights search results
set hlsearch

" installing the theme
Plugin 'wojciechkepka/vim-github-dark'
set background=dark
colorscheme ghdark

" turn on language highlight
syntax enable 

" this is how increase vim's color palette
set t_Co=256

" system clipboards
set clipboard=unnamed

" file system explorer ( to activate  :NERDTree or tap Ctrl-N key)
Plugin 'preservim/nerdtree'
nnoremap <C-n> :NERDTree<CR>

" set vertical column according to PEP8
set colorcolumn=80
highlight ColorColumn ctermbg=8 guibg=lightgrey

" quick commenting in python
" press ,ic to insert comments and,rc to remove comments
vmap ,ac :s/^/#/g<CR>:let @/ = ""<CR>
map  ,ac :s/^/#/g<CR>:let @/ = ""<CR>
vmap ,rc :s/^#//g<CR>:let @/ = ""<CR>
map  ,rc :s/^#//g<CR>:let @/ = ""<CR>

" airline and set up theme
Plugin 'itchyny/lightline.vim'
set laststatus=2
let g:lightline = {'colorscheme': 'ghdark'}
