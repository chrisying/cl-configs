
" Standard settings
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler
set number
set showcmd
set cmdheight=2
set showmatch
set ignorecase
set smartcase
set incsearch
set mouse=a
set so=7
set lazyredraw
set noerrorbells
set novisualbell
syntax on
nnoremap : ;
nnoremap ; :
map 0 ^
set background=dark
colorscheme delek

" Vundle
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

" Highlight lines too long
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/

" Restore cursor position (10 files, 100 lines, 20 cmdline history)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Bracket completion
inoremap {<CR> {<CR>}<Esc>ko
