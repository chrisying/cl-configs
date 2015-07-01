
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

" Plugins
filetype plugin on
filetype indent on
