set nocompatible " not vi compatible

"----------------
" Pathogen
"----------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"----------------
" Syntax
"----------------

syntax on " turn on syntax highlighting
set showmatch " show matching braces when cursor is over them

" file type
filetype plugin indent on


"----------------
" Indent
"----------------

set autoindent

" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" on pressing tab, insert 4 spaces
set shiftwidth=4
set expandtab

"----------------
" Editing
"----------------

" Fix backspace problem
:set backspace=indent,eol,start
:set t_kb=
:set t_kD=^[[3~
imap ^? ^H






