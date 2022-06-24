" Big thanks to:
" https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84

" General
" Use :help [property] for more info
set autoindent				" Indents any new lines to the same level as the previous line
set tabstop=4				" Tab size
set shiftwidth=4			" 
set smartindent				" 
set noerrorbells			" Stops the chiming on errors etc
set nowrap					" 
set incsearch				" incremental search
set scrolloff=8				" 
set termguicolors			" Enables more colors (24-bit)
set mouse=a					" Enables mouse clicks
set syntax=on				" Enables syntax highlighting
" set clipboard=unnamedplus
set clipboard+=unnamedplus

" Use Windows' native clipboard
" Thanks to https://github.com/neovim/neovim/issues/12113
let s:win32yank = 'win32yank.exe'
let g:clipboard = {
      \  'name' : 'wsl',
      \  'copy' : {
      \    '+' : s:win32yank..' -i --crlf',
      \    '*' : s:win32yank..' -i --crlf',
      \  },
      \  'paste' : {
      \    '+' : s:win32yank..' -o --lf',
      \    '*' : s:win32yank..' -o --lf',
      \  },
      \}
unlet s:win32yank

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

" Color scheme
set background=dark
autocmd vimenter * ++nested colorscheme solarized8

set showmatch " Highlights the matching parentheses for a second after it's created ({[]})




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


" Remaps
noremap p h
noremap P H
noremap n j
noremap N J
noremap e k
noremap E K
noremap i l
noremap I L

noremap h p
noremap H P
noremap j n
noremap J N
noremap k e
noremap K E
noremap l i
noremap L I

" move line or visually selected block - alt+j/k
inoremap <A-n> <Esc>:m .+1<CR>==gi
inoremap <A-e> <Esc>:m .-2<CR>==gi
vnoremap <A-e> :m '<-2<CR>gv=gv
vnoremap <A-n> :m '>+1<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-p> <C-w>h
nnoremap <C-n> <C-w>j
nnoremap <C-e> <C-w>k
nnoremap <C-i> <C-w>l

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
