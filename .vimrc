if !1 | finish | endif

set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set clipboard+=unnamed

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


if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
"NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'Keithbsmiley/swift.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'

" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

colorscheme hybrid

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


nnoremap <silent> ,b :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,r :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,m :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,u :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
