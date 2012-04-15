set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

set ts=4 sw=4 sts=0
autocmd FileType c,cpp,perl set cindent
autocmd FileType ruby set tabstop=2 shiftwidth=2 expandtab

set backspace=indent,eol,start
set autoindent
set smartindent
set expandtab
filetype on
filetype indent on
filetype plugin on
sy on
set hlsearch
set clipboard=unnamed

source $VIMRUNTIME/macros/matchit.vim
