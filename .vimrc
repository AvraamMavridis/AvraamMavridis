execute pathogen#infect()
syntax on
filetype plugin indent on

"Gruvbox dark theme"
colorscheme gruvbox
set background=dark
set sts=2
set ts=2
set sw=2
execute pathogen#infect()

"Turn on Omni completion"
filetype plugin on
set omnifunc=syntaxcomplete#Complete

let mapleader = "/"

"Ignore " 
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Prettier config"
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#autoformat = 0
let g:javascript_plugin_jsdoc = 1
let g:prettier#config#bracket_spacing = 'true'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

set autoindent                        " maintain indent of current line
set backspace=indent,start,eol  

set laststatus=2                      " always show status line

if has('linebreak')
  set linebreak                       " wrap long lines at characters in 'breakat'
endif

"Shortcut for :CtrlP plugin for fuzzy search"
nnoremap ,<space> :CtrlP<Enter>

set number

call plug#begin('~/.vim/plugged')
Plug 'gregsexton/matchtag' " Like matchparen, but for HTML tags
Plug 'editorconfig/editorconfig-vim' " Cross-editor code formatting settings
Plug 'w0rp/ale' " ALE, better than Syntastic
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'scrooloose/nerdcommenter' " Comments toggle
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
" Language support
Plug 'nikvdp/ejs-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-syntastic/syntastic'
let g:jsx_ext_required = 0
call plug#end()
