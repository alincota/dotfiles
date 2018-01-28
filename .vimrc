" Centralise backups, swap files and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Soft tabs
" =========
set tabstop=4
" Change the number of space characters inserted for indentation
set shiftwidth=4
set expandtab
" Note - if you want to enter a real tab character use Ctrl-V<Tab> key sequence
" ==

" Highlighting
" ============
syntax on
" Highlight current line
" TODO: consider removing as by default this is a line and can be bad when editing
" code which contains variables that use underscore (_). You can barely distinguish it.
set cursorline
" Highlighting search matches and ignore case of searches
set hlsearch ignorecase
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" ===

" General
" =======
" Show the filename in the window titlebar
set title
" Enable line numbers
set number
" ==
