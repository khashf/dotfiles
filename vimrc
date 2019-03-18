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
" file type
filetype plugin indent on

"--------------------------
" Appearance
"--------------------------

" base16-vim
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

set showmatch " show matching braces when cursor is over them

"----------------
" Formatting
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
set backspace=indent,eol,start
set t_kb=
set t_kD=^[[3~
imap ^? ^H

"set nu
"set relativenumber "absolute numbering & relative numbering
set incsearch " incremental search (as string is being typed)
set hls " high light search
nmap \q :nohlsearch<CR>
set showcmd " show current command
set history=8193 "more history
set ignorecase
set smartcase " don't ignore all-cap
nmap <C-e> :e#<CR>

" Copy-paste to/from clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d"

"--------------------
"" Specific file types
"--------------------
"
"" Markdown
"
"
" force Markdown without installing vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" enable fenced code block syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
" disable markdown syntax concealing
let g:markdown_syntax_conceal = 0
" limit syntax highlighting to min 100
let g:markdown_minlines = 100

"----------------
" Windows
"----------------

" Natural split openning
set splitbelow
set splitright

" Quicker splitted windows navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"----------------------
" Plugin configurations
"----------------------

" remap <Leader> key
let mapleader = ","


" NERDTree
nnoremap <Leader>n :NERDTreeToggle<Enter> 
nnoremap <Leader>f :NERDTreeFind<Enter> 
" Close nerd three if it's the only thing still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Automatically open nerdtreee when vim starts up with no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" vim-airline
let g:airline_theme='powerlineish'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}
nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>r :SyntasticReset<CR>
nnoremap <Leader>i :SyntasticInfo<CR>
nnoremap <Leader>m :SyntasticToggleMode<CR>

" tagbar
nnoremap <Leader>t :TagbarToggle<CR>

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"---------------------
" Local customizations
"---------------------

" local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
