"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                 Plugins                                     "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Usage:
" Plug 'plugin_url'
" :PluginInstall

" Set the plugin directory
call plug#begin('~/.vim/plugged')

" Gruvbox color scheme
Plug 'morhetz/gruvbox'

" Molokai color scheme
Plug 'tomasr/molokai'

" File explorer
Plug 'scrooloose/nerdtree'

" Airline
Plug 'bling/vim-airline'

" Fuzzy file search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Code completion
Plug 'Valloric/YouCompleteMe'

" Git gutter symbols
Plug 'airblade/vim-gitgutter'

" Easy vim motions
Plug 'easymotion/vim-easymotion'

" Rails support
Plug 'tpope/vim-rails'

" Syntax checking
Plug 'scrooloose/syntastic'

" Git support
Plug 'tpope/vim-fugitive'

" Set the working directory to the project root
Plug 'airblade/vim-rooter'

" Initialize the plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                  General                                    "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" How many lines of history to save
set history=500

" Enable filetypes
filetype plugin on
filetype indent on

" Auto-read when a file changes externally
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                Key Bindings                                 "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set a leader
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" Open NERD tree
map <leader>n :NERDTree<cr>

" Run 'source %'
map <leader>% :source %<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                     UI                                      "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the number of lines to always keep above and below the cursor
set scrolloff=7

" Turn on the wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Show the current position
set ruler

" Show the wrap columns
set colorcolumn=80

" Show line numbers
set number

" Height of the command bar
set cmdheight=2

" Allow for the backspace to work properly in insert mode
set backspace=eol,start,indent

" Allow for the cursor to move to different lines when navigating left or right
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" Add margin to the left
set foldcolumn=1

" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                   Search                                    "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" Allow for searching capital letters
set smartcase

" Highlight search results
set hlsearch

" Show incremental search results
set incsearch

" Don't redraw while executing macro
set lazyredraw

" Change special characters for regular expressions
set magic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                   Styles                                    "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use the Solarized color scheme
syntax enable
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Set the standard encoding
set encoding=utf8

" Set the standard file type
set fileformats=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                 Formatting                                  "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Maintain tab alignment
set smarttab

" Set line wrap options
set wrap
set linebreak
set textwidth=79

" Set tabs to 4 spaces
set shiftwidth=4
set tabstop=4

" Auto-indent based on current line indentation
set autoindent

" Smart-indenting for certain file formats
set smartindent

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

