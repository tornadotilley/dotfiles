" ==============================================================================
" File Type Plugins & Indent Rules
" ==============================================================================
filetype plugin indent on   " Enable file type detection, plugins, and custom indents

" ==============================================================================
" File Type Plugins & Indent Rules
" ==============================================================================
filetype plugin indent on   " Enable file type detection, plugins, and custom indents

" Custom tab settings per file type (2 spaces for Web/YAML, 4 for Python/C)
autocmd FileType html,css,javascript,typescript,json,yaml setlocal tabstop=2 shiftwidth=2

" Remove trailing whitespace on save automatically
autocmd BufWritePre * %s/\s\+$//e

" ==============================================================================
" Tab & Indentation Rules
" ==============================================================================
set expandtab               " Convert tabs to spaces
set tabstop=4               " Insert 4 spaces for a tab
set shiftwidth=4            " Indent level is 4 spaces
set softtabstop=4           " Treat 4 spaces like a tab when pressing Backspace
set autoindent              " Copy indent from current line when starting a new one
set smartindent             " Smart autoindenting when starting a new block
set number
