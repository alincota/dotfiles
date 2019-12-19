" Centralise backups, swap files and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

inoremap jk <esc>   " jk is escape (remapped)
set nocompatible    " Vim only compatible

" Soft tabs
" =========
" Note - if you want to enter a real tab character use Ctrl-V<Tab> key sequence
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces


" Highlighting
" ============
syntax on
" Highlight current line
set cursorline      " highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey40
" Highlighting search matches and ignore case of searches
set hlsearch ignorecase
set showmatch           " highlight matching [{()}]


" General
" =======
set wildmenu            " visual autocomplete for command menu

" Show the filename in the window titlebar
set title
" Enable line numbers
set number
set relativenumber
" Use UTF-8 without BOM marker
set encoding=utf-8 nobomb

