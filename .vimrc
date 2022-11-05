" Created by Alekseev Danil 2022 (ᵔ◡ᵔ)


" ==============================
" General settings for all files
" ==============================

filetype plugin indent on
set nocompatible
set backspace=indent,eol,start " enable backspace work
set encoding=UTF-8
syntax enable " turn on language highlight
set noswapfile " remove the creation of .swp files
set number " includes line numbering
set ttimeoutlen=10 " reduce the delay in entering escape sequences

set t_Co=256 " this is how increase vim's color palette

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
Plug 'wojciechkepka/vim-github-dark' " plugin with GitHub dark theme 
Plug 'vim-airline/vim-airline' " plugin airline of our environment
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " plugin for correct display of icons in projects
Plug 'preservim/nerdtree' " file system explorer (:NERDTree)
Plug 'shime/vim-livedown' " for Markdown files compiling
call plug#end()

colorscheme ghdark " set environment theme

let g:airline_theme='angr' " airline theme
let g:Powerline_symbols='unicode' " unicode support
let g:airline_powerline_fonts = 1 " enable support for Powerline fonts
let g:airline_section_z = "%l/%L:%c" " custom cursor position graph

" if you are using vim via terminal, change the font in terminal settings
" if you are using Vim via Gui change the name to your font
" suitable fonts can be found here: https://github.com/ryanoasis/nerd-fonts
if has("gui_running")
    set guifont="Hack Regular Nerd Font Complete Mono":h14 " font name:size
endif

" assign a hotkey to open/close NERDTree (\t)
nnoremap <leader>t :NERDTreeToggle<CR>


" =======================
" Formatting Python Files
" =======================

" setting up tabs for Python
autocmd Filetype python
    \ set tabstop=4 | " tabs in the file are formatted to spaces
    \ set softtabstop=0 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set fileformat=unix |
    \ set columns=80 " set vertical column according to PEP8 


" ========================= 
" Formatting markdown files
" =========================

" to preview the Markdown file, press the keyboard shortcut \md
nnoremap <leader>md :LivedownToggle<CR>

