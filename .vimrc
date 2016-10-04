execute pathogen#infect('bundle/{}')
filetype plugin indent on
syntax on

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number
set backspace=2

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

set t_Co=256
colorscheme jellybeans

set omnifunc=syntaxcomplete#Complete

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set hlsearch
set smartcase
set ignorecase
set incsearch
set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=3

let g:syntastic_python_flake8_args = "--max-complexity 13 --ignore=E501,E128"
let g:syntastic_stl_format = '%E{Err:%e}%B{ | }%W{Warn:%w}'
let g:syntastic_enable_signs = 1
let python_highlight_all = 1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" relative line numbering
if exists('&relativenumber')
  set relativenumber
endif

" move by row, not by line (with reverse mappings)
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Key Bindings
"
"escape shortcut
inoremap jj <ESC>

" Paste pdb, indented by multiples of 4 spaces
nnoremap q o<ESC>iimport pdb; pdb.set_trace()<ESC>
nnoremap 2q o<ESC>iimport pdb; pdb.set_trace()<C-[>V>
nnoremap 3q iimport pdb; pdb.set_trace()<C-[>V2>
nnoremap 4q iimport pdb; pdb.set_trace()<C-[>V3>
nnoremap 5q iimport pdb; pdb.set_trace()<C-[>V4>
nnoremap 6q iimport pdb; pdb.set_trace()<C-[>V5>

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
