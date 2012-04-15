set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

set ts=2 sw=2 sts=0
autocmd FileType c,cpp,perl set cindent
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascript set tabstop=4 shiftwidth=4 expandtab

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
