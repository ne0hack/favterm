" -------- General --------
filetype plugin indent on
set nocompatible
set backspace=indent,eol,start " enable backspace work
set encoding=UTF-8
syntax enable " turn on language highlight
set noswapfile " remove the creation of .swp files
set number " includes line numbering
set ttimeoutlen=10 " reduce the delay in entering escape sequences

set t_Co=16 

set foldcolumn=2 " offset from the left edge

" to ignore case when searching
set ignorecase
set smartcase

set hlsearch " highlights search results

set clipboard^=unnamed,unnamedplus " system clipboards

" install vim-plugin if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" installing the plugins themselves
call plug#begin('~/.vim/bundle')

" -------- General --------
Plug 'rafi/awesome-vim-colorschemes' " themes plugin 
Plug 'vim-airline/vim-airline' " plugin airline of our environment
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " plugin for correct display of icons in projects
Plug 'preservim/nerdtree' " file system explorer (:NERDTree)
Plug 'tpope/vim-fugitive' " to work with git
Plug 'tpope/vim-commentary' " allows to comment out the code (with the gcc command) 
Plug 'LunarWatcher/auto-pairs' " For autocomplete pairs (quotes, brackets, etc.)
Plug 'maxboisvert/vim-simple-complete' " Simple autocomplete, suitable for everything

" -------- Markdown --------
Plug 'shime/vim-livedown' " Markdown files compiling

call plug#end()

" set environment dark theme
colorscheme challenger_deep 

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

let g:Powerline_symbols='unicode' " unicode support
let g:airline_powerline_fonts=1 " enable support for Powerline fonts
let g:airline_section_z="%l/%L:%c" " custom cursor position graph
let g:airline#extensions#whitespace#enabled=0 " removes the tralling display
let g:airline_enable_fugitive=1 " integration with fugitiv plugin

" will replace the icons
" (leaves the airline beautiful even if the icons are not pulled up)
let g:airline_left_alt_sep = '»'
let g:airline_right_alt_sep = '«'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'


" assign a hotkey to open/close NERDTree (\t)
nnoremap <leader>t :NERDTreeToggle<CR>


" -------- Python --------
" tabs in the file are formatted to spaces
" set vertical column according to PEP8 
au FileType python set tabstop=4 
	\ softtabstop=0 
	\ shiftwidth=4 
	\ expandtab 
	\ fileformat=unix
	\ colorcolumn=80

au FileType python highlight ColorColumn ctermbg=8

" auto closing of the preview window
let g:ycm_autoclose_preview_window_after_completion=1


" -------- Markdown --------
" to preview the Markdown file, press the keyboard shortcut \md
nnoremap <leader>md :LivedownToggle<CR>

