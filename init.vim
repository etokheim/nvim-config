" General
set autoindent
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
" set relativenumber
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

" Color scheme
set background=dark
autocmd vimenter * ++nested colorscheme solarized8


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Some fuzzy searching thingy
Plug 'nvim-telescope/telescope.nvim'

" Solarized theme
Plug 'lifepillar/vim-solarized8'

" Language server
Plug 'neovim/nvim-lspconfig'

" Undo visualizer
Plug 'mbbill/undotree'

" " Initialize plugin system
call plug#end()

set noexpandtab
autocmd FileType python setlocal noexpandtab
