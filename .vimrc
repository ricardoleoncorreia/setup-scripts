" IDE format
set numberwidth=1
set encoding=utf-8

" IDE layout
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set showmatch
set sw=2
set number
set relativenumber
set laststatus=2
set noshowmode
set nocompatible
set foldmethod=indent

set ttyfast
syntax on
set wrap
set backspace=indent,eol,start

au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile, BufRead *.js,*.ts,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2u |
    \ set textwidth=99

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.ts,*.html,*.css,*.scss match BadWhitespace /\s\+$/  

" Pluggins
call plug#begin()

Plug 'phanviet/vim-monokai-pro'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

call plug#end()

set termguicolors
colorscheme monokai_pro
let NERDTreeQuitOnOpen=1
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

