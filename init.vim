" General
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set smartindent
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
set termguicolors

" Display hidden characters (and the like)
set list
set listchars=tab:→\ ,space:·,eol:¬,trail:~

" Auto source init.vim files within project directories
set exrc

" Show the relative line number, and display the current line number on the
" active line
set relativenumber
set nu

" If you search with a captial letter, the search will be case sensitive, if
" not, it's unsensitive
set smartcase
set ignorecase

" Keep undo history
set undofile

" Add a column on the left side for messages (linting/git messages etc. Need
" plugins)
set signcolumn=yes
