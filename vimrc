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
set t_Co=256
"set cursorline

"----------------
" Appearance
"----------------

if (has("autocmd"))
    augroup colorextend
        autocmd!
        let s:colors = onedark#GetColors()
        let s:purple = s:colors.purple
        let s:blue = s:colors.blue
        autocmd ColorScheme * call onedark#extend_highlight("PreProc", { "fg": s:purple })
        autocmd ColorScheme * call onedark#extend_highlight("PreCondit", { "fg": s:purple })
        autocmd ColorScheme * call onedark#extend_highlight("Type", { "fg": s:purple })
        autocmd ColorScheme * call onedark#extend_highlight("StorageClass", { "fg": s:purple })
        autocmd ColorScheme * call onedark#extend_highlight("Structure", { "fg": s:purple })
        autocmd ColorScheme * call onedark#extend_highlight("Typedef", { "fg": s:purple })
        "autocmd ColorScheme * call onedark#extend_highlight("Include", { "fg": s:purple })
        "autocmd ColorScheme * call onedark#extend_highlight("Function", { "fg": s:blue })
    augroup END
endif

colorscheme onedark

"colorscheme base16-default-dark

"set background=dark
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
" Formating
"----------------
set linespace=3

"----------------
" Editing
"----------------

" Fix backspace problem
:set backspace=indent,eol,start
:set t_kb=
:set t_kD=^[[3~
imap ^? ^H






