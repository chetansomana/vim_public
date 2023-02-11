if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
set fileencodings=utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position
filetype plugin indent on
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

if &term=="xterm"
set t_Co=4
set t_Sb=[4%dm
set t_Sf=[3%dm
endif
set tabstop=4
set history=300
set wildmode=list:longest,full
set shortmess+=r
set showmode
set showcmd
set nomodeline
set shiftwidth=2
set shiftround
set expandtab
set ignorecase
set smartcase
set incsearch
set gdefault
set complete=.,w,k
set whichwrap=h,l,~,[,]
set nu
set foldmethod=syntax
"Plugin '~/.vim/plugin/verilog_systemverilog.vim'
let g:solarized_termcolors=16
syntax enable
set background=dark
colorscheme solarized


au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v,*.svx,*.svix so ~/.vim/syntax/verilog_systemverilog.vim