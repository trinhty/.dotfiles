call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
call plug#end()
let g:ale_set_highlights = 0
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_completion_enable = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_linters = {'javascript': ['eslint']}
set number "turn on line numbers
syntax enable
set background=dark
colorscheme elflord
set clipboard=unnamedplus
set ruler
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab
set autoindent
set nobackup
set noswapfile
set laststatus=0


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

let &t_SI = "\<ESC>[6 q"
let &t_SR = "\<ESC>[4 q"
let &t_EI = "\<ESC>[2 q"
