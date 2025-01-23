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
set scrolloff=7
set lazyredraw
set noerrorbells
set novisualbell
set autoindent
set backspace=indent,eol,start
set hidden
set cursorcolumn
set cursorline
set wildmenu
set wildmode=list:longest

syntax on
nnoremap : ;
nnoremap ; :
map 0 ^

set t_Co=256
set background=dark
colorscheme delek
highlight CursorColumn ctermfg=none ctermbg=black cterm=none

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
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-scripts/a.vim'
Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()
filetype plugin indent on

" YCM close preview
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Highlight lines too long
" highlight OverLength ctermbg=red ctermfg=white
" match OverLength /\%81v.\+/

" Restore cursor position (10 files, 100 lines, 20 cmdline history)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Bracket completion
inoremap {<CR> {<CR>}<Esc>ko

" Delete trailing whitespace and keep cursor position
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Compile different filetypes
autocmd FileType c command C w | !gcc %:t
autocmd FileType cpp command C w | !g++ %:t
autocmd FileType tex command C w | !pdflatex %:t
