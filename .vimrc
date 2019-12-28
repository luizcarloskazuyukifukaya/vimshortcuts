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
set cursorline

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
" Key remap
noremap fff <ESC>
noremap! fff <ESC>
