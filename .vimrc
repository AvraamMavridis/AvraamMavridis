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

"Ignore " 
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Prettier config"
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#autoformat = 0
let g:javascript_plugin_jsdoc = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

set autoindent                        " maintain indent of current line
set backspace=indent,start,eol  

set laststatus=2                      " always show status line

if has('linebreak')
  set linebreak                       " wrap long lines at characters in 'breakat'
endif

"Shortcut for :CtrlP plugin for fuzzy search"
nnoremap ,<space> :CtrlP<Enter>

set number

