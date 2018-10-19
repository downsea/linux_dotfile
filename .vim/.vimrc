set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Rykka/InstantRst'
Plugin 'Rykka/riv.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'derekwyatt/vim-scala'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'idbrii/vim-sandydune'
Plugin 'altercation/vim-colors-solarized'
Plugin 'epeli/slimux'
Plugin 'chrisbra/csv.vim'
Plugin 'dbeniamine/cheat.sh-vim'
Plugin 'gdbmgr'
Plugin 'LargeFile'
Plugin 'CmdlineComplete'
Plugin 'powerline/powerline' , {'rtp': 'powerline/bindings/vim/'}

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

"-- base --"

set hidden
set relativenumber
set ruler
set cursorline
"set wildmenu
set splitbelow

set history=500
set scrolloff=6
set cmdheight=1
set display=lastline
set omnifunc=syntaxcomplete#Complete
set autoread
syntax on

"powerline settings
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
set noshowmode
set laststatus=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"-- file --"

filetype plugin indent on

set autoread
set noswapfile
set nowritebackup

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,default

"-- format --"

set expandtab
set smarttab
set shiftround
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=400

set autoindent
set smartindent
set copyindent

set foldenable
set foldmethod=marker

set backspace=indent,eol,start
set iskeyword+=:
set matchpairs+=<:>
set whichwrap+=<,>,h,l
set nowrap

set list
set listchars=tab:›\ ,eol:¬

set formatprg=par-format\ -w200
setlocal fo-=t

"-- search --"

set smartcase
set incsearch
set hlsearch
set gdefault
set showmatch

set grepprg=grep\ -nH\ $*
set grepformat=%f:%l:%m

"-- map --"

let mapleader=','

map ; :

" exit back to normal mode
imap jj <esc>

nmap <leader>w :w!<cr>

nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e! $MYVIMRC<cr>

" formatting paragraph
nmap Q gqap"
vmap Q gq

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" open a new vertical split and switch over to it
nmap <leader>l <c-w>v<c-w>l

" horizontal split
nmap <leader>- <c-w>s<c-w>j

" close window
nmap <leader>cw :close<cr>

" buffer next
nmap <C-n> :bnext<cr>
nmap <C-p> :bp<cr>
nmap <leader>q :bdelete<cr>

" grep
map <leader>n :cn<cr>
" map <leader>p :cp<cr>

" search
"map <space> /
map <m-space> ?
nmap <silent> <leader>/ :nohlsearch<cr>

" paste mode
set pastetoggle=<f2>

" remove indenting on empty lines
map <f3> :%s/\s*$//g<cr>:noh<cr>''

" strip all trailing whitespace in the current file
nmap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" tag list
let Tlist_WinWidth = 20
map <F4> :TagbarToggle<cr>
"map <F4> :TlistToggle<cr>

"set gui
if has('gui_running')
    set background=light
    set mouse=a " use mouse everywhere
else
    set background=dark
endif

set t_Co=256
set t_ut=
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme railscasts


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim menu and status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline  		" highlight current line
set display=lastline
hi cursorline guibg=#333333 	" highlight bg color of current line
hi CursorColumn guibg=#333333   " highlight cursor
"hi CursorColumn guibg=#white   " highlight cursor
if has('cmdline_info')
    set ruler                  	" show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                	" show partial commands in status line and
                               	" selected characters/lines in visual mode
endif

"-- other --"
" ultisnips
let g:UltiSnips = {}
let g:UltiSnips.always_use_first_snippet = 1
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsListSnippets = '<c-r><tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" tmux
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

" set latex
let g:tex_flavor='latex'
let g:Tex_='latex'
let g:Tex_TEXINPUTS = '~/texmf/own/**,./**'

"open large file
let g:LargeFile=100

" reload .vimrc
autocmd! BufWritePost vimrc source ~/.vimrc

"-- source --"
source ~/.vim/conf/abbrevs.vim
source ~/.vim/conf/base.vim
source ~/.vim/conf/plugin.vim
source ~/.vim/conf/funcs.vim
source ~/.vim/conf/latex.vim
source ~/.vim/conf/python.vim
source ~/.vim/conf/r.vim
source ~/.vim/conf/awk.vim
source ~/.vim/conf/perl.vim
source ~/.vim/conf/ruby.vim
