local options = { noremap = true, silent = true }

local term_options = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Colemak - Swaps neio to hjkl
keymap('n', 'p', 'h', options)
keymap('n', 'P', 'H', options)
keymap('n', 'n', 'j', options)
keymap('n', 'N', 'J', options)
keymap('n', 'e', 'k', options)
keymap('n', 'E', 'K', options)
keymap('n', 'i', 'l', options)
keymap('n', 'I', 'L', options)

-- Colemak - Swap hjkl with neio
keymap('n', 'h', 'p', options)
keymap('n', 'H', 'P', options)
keymap('n', 'j', 'n', options)
keymap('n', 'J', 'N', options)
keymap('n', 'k', 'e', options)
keymap('n', 'K', 'E', options)
keymap('n', 'l', 'i', options)
keymap('n', 'L', 'I', options)

-- Move line or visually selected block - alt + n/e
keymap('i', '<A-n>', '<Esc>:m .+1<CR>==gi', options)
keymap('i', '<A-e>', '<Esc>:m .-2<CR>==gi', options)
-- keymap('v', '<A-n>', ":m '>+1<CR>gv=gv", options)
-- keymap('v', '<A-e>', ":m '<-2<CR>gv=gv", options)

-- Move the focused pane to the left/bottom/top/right
keymap('n', '<C-P>', '<C-W>H', options)
keymap('n', '<C-N>', '<C-W>J', options)
keymap('n', '<C-E>', "<C-W>K", options)
keymap('n', '<C-I>', "<C-W>L", options)

-- Focus the pane to the left/bottom/top/right
keymap('n', '<C-p>', '<C-w>h', options)
keymap('n', '<C-n>', '<C-w>j', options)
keymap('n', '<C-e>', "<C-w>k", options)
keymap('n', '<C-i>', "<C-w>l", options)
