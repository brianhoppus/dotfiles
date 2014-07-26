execute pathogen#infect()
set number
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set tabstop=2 shiftwidth=2 expandtab
set mouse=a
nmap <C-t> :TagbarToggle<CR>
