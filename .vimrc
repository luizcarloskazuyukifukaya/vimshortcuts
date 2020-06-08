" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" ORIGINAL FROM https://gist.github.com/joegoggins/8482408
" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hlsearch                    "Search highlisting
set ignorecase                  "Case insensitive search
set smartcase                   " excep when using capital letters
set ruler                       "Display cursor position on the last line of the screen or in the status line of a window
set showmatch                   "Matching parentheses
set cursorline                  " line indicator
set cursorcolumn                " column indicator

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" NOT WORKING: Didnt work when yanked right out of YADR
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2       " tab stop 2
set expandtab       " tab with space

" ================ Others ======================

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
" ================ Color Scheme ========================
" color files: /usr/share/vim/vim80/colors
"-------------------------------------------------------
"[Best for macbook]
"colorscheme murphy
"colorscheme pablo
colorscheme koehler
"-------------------------------------------------------
"colorscheme desert
"colorscheme blue
""colorscheme darkblue
"colorscheme default
"colorscheme delek
"colorscheme desert
"colorscheme elflord
""colorscheme evening
"colorscheme industry
""colorscheme morning
""colorscheme peachpuff
"colorscheme ron
""colorscheme shine
"colorscheme slate
"colorscheme torte
"colorscheme zellne

set background=dark
"-------------------------------------------------------
" Remap keys
noremap! fff <ESC>
"-------------------------------------------------------
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

set number relativenumber
execute pathogen#infect()
call pathogen#helptags()

"========================================================
" https://github.com/junegunn/vim-plug
" vim-plug
"-------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"-------------------------------------------------------
" vim-plug plugins should be listed between >> and <<
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" vim-javascript
"Plug 'https://github.com/pangloss/vim-javascript.git'
" vim-jsx
"Plug 'https://github.com/mxw/vim-jsx.git'
"----------------------------------
" https://github.com/sheerun/vim-polyglot
"----------------------------------
Plug 'sheerun/vim-polyglot'

"----------------------------------
" https://github.com/ycm-core/YouCompleteMe
"----------------------------------
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'Valloric/YouCompleteMe'
"https://github.com/ycm-core/YouCompleteMe/issues/1751#issuecomment-530659596
""I added this line in my .vimrc
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

"after installing it, I got error and what I did was
" cd $HOME/.vim/plugged/YouCompleteMe and ran install.py myself. 
"I ran python3 install.py --clang-completer --ts-completer
"
"----------------------------------
" Coc.nvim
" https://scrapbox.io/jiro4989/Vim%E3%81%AE%E8%A3%9C%E5%AE%8C%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3coc.nvim%E3%82%92%E5%B0%8E%E5%85%A5
"
" https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim
"----------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" For example, for generic web-development consider
" :CocInstall coc-tsserver coc-json coc-html coc-css
"


"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"-------------------------------------------------------
" Initialize plugin system
call plug#end()
"========================================================

