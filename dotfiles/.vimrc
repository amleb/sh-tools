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

" Load plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'blockloop/vim-swigjs'

call plug#end()
" }}}