local options = {
	autoindent = true,				-- Indents any new lines to the same level as the previous line
	tabstop = 4,						-- Tab size
	shiftwidth = 4,					-- 
	smartindent = true,				-- 
	errorbells = true,				-- Stops the chiming on errors etc
	wrap = false,					-- 
	incsearch = true,				-- Incremental search
	scrolloff = 8,				-- 
	termguicolors = true,			-- Enables more colors (24-bit)
	mouse = 'a',						-- Enables mouse clicks
	syntax = 'on',					-- Enables syntax highlighting
	clipboard = 'unnamedplus',			-- Makes Neovim use the system's clipboard, so you can copy/paste from Neovim. A workaround is required for Windows

	list = true,-- Display hidden characters (and the like)
	listchars = "tab:→ ,space:·,eol:¬,trail:~",
	exrc = true, -- Auto source init.vim files within project directories
	relativenumber = true,-- Show the relative line number, and display the current line number on the active line
	number = true, -- Show line numbers?
	smartcase = true, -- If you search with a captial letter, the search will be case sensitive, if not, it's unsensitive
	ignorecase = true,
	undofile = true, -- Keep undo history
	signcolumn = 'yes', -- Add a column on the left side for messages (linting/git messages etc. Need plugins)
}


for key, value in pairs(options) do
	vim.opt[key] = value
end





