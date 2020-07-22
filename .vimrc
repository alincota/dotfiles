" GENERAL {{{
" =======
set nocompatible            " Vim only compatible
set title                   " show the filename in the window titlebar
set number                  " enable line numbers
set relativenumber
set encoding=utf-8 nobomb   " use UTF-8 without BOM marker
set tags=tags;/             " check the current folder for tags file and keep going one directory up all the way to the root folder
set autochdir               " change working directory to the one of the file you are editing
set laststatus=2            " Always show the status line

" SOFT TABS {{{
" =========
" Note - if you want to enter a real tab character use Ctrl-V<Tab> key sequence
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces
" }}}

" HIGHLIGHTING {{{
" ============
syntax on " enable syntax processing
set cursorline " highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey40 " Make the current line bol by default
set incsearch           " search as characters are entered
set hlsearch ignorecase " highlighting search matches and ignore case of searches
set showmatch           " highlight matching [{()}]
" }}}
" }}}

" BACKUPS {{{
" =======
set backup
set backupdir=~/.vim/backups,/tmp
set backupskip=/tmp/*
set directory=~/.vim/swaps,/tmp
set undodir=~/.vim/undo,/tmp
set writebackup
" }}}

" WILDMENU {{{
" ========
set wildmenu                                " visual autocomplete for command menu
set wildignore=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/.git/**/*,*/.svn/**/*     " CVS files
set wildignore+=tags                        " ctags file
set wildignore+=*.min.*                     " minified versions of files (e.g JS)
" }}}

" PLUGINS {{{
" =======
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rust-lang/rust.vim'
" Plug 'majutsushi/tagbar'    " Plugin that provides an easy way to browse the tags of the current file and get an overview of its structure
" Plug 'vim-vdebug/vdebug'    " Plugin that offers debugger client for Vim. It interfaces with any debugger that faithfully uses the DBGP protocol, such as Xdebug for PHP

" PHP specific plugins
Plug 'StanAngeloff/php.vim' " Not sure this is working very well for the RS
call plug#end()

colorscheme monokai
" }}}

" CUSTOM MAPPINGS {{{
" ===============
let mapleader=","   " leader is comma
inoremap jk <esc>   " jk is escape (remapped)

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <silent> confe :vsp $MYVIMRC<CR>    " Edit vim configuration file
nnoremap <silent> confr :source $MYVIMRC<CR> " Reload vim configuration file

nnoremap <PageUp>   :bprevious<CR>  " switch to previous buffer in the buffer list
nnoremap <PageDown> :bnext<CR>      " switch to next buffer in the buffer list

nnoremap <leader>s :mksession<CR>   " save session. You can re-open it with vim -S

" PLUGINS' MAPPINGS {{{
nnoremap <leader>nt :NERDTreeToggle<CR>     " NerdTree toggle
nnoremap <C-p> :Files<CR>                   " Fuzzy finder (files, buffers etc.)

let g:NERDSpaceDelims = 1   " NERDCommenter - Add spaces after comment delimiters
" }}}
" }}}

" vim: filetype=vim:foldmethod=marker:foldlevel=0
