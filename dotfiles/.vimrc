" hide line numbers
set nonu

" turn on auto indentation
set autoindent

" stop line breaking
set nowrap

" expand tabs to four spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable syntax highlighting
syntax on

" highlight searches
set hlsearch
" ignore case of searches
set ignorecase
" highlight dynamically as pattern is typed
set incsearch

" show file title
set title

" add SWIG syntax
au BufNewFile,BufRead *.i set filetype=swig
au BufNewFile,BufRead *.swg set filetype=swig

" Load plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'blockloop/vim-swigjs'

call plug#end()
" }}}