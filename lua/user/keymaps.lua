local options = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
-- The “Leader key” is a way of extending the power of VIM's shortcuts
-- by using sequences of keys to perform a command. The default leader
-- key is backslash. Therefore, if you have a map of <Leader>Q, you can
-- perform that action by typing \Q
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Colemak - Swaps neio to hjkl
keymap('', 'p', 'h', options)
keymap('', 'P', 'H', options)
keymap('', 'n', 'j', options)
keymap('', 'N', 'J', options)
keymap('', 'e', 'k', options)
keymap('', 'E', 'K', options)
keymap('', 'i', 'l', options)
keymap('', 'I', 'L', options)

-- Colemak - Swap hjkl with neio
keymap('', 'h', 'p', options)
keymap('', 'H', 'P', options)
keymap('', 'j', 'n', options)
keymap('', 'J', 'N', options)
keymap('', 'k', 'e', options)
keymap('', 'K', 'E', options)
keymap('', 'l', 'i', options)
keymap('', 'L', 'I', options)

-- Move line or visually selected block - alt + n/e
keymap('i', '<A-n>', '<Esc>:m .+1<CR>==gi', options)
keymap('i', '<A-e>', '<Esc>:m .-2<CR>==gi', options)
keymap("v", "<A-n>", ":m .+1<CR>==", options)
keymap("v", "<A-e>", ":m .-2<CR>==", options)
keymap("n", "<A-n>", ":m .+1<CR>==", options)
keymap("n", "<A-e>", ":m .-2<CR>==", options)
keymap("x", "<A-n>", ":move '>+1<CR>gv-gv", options)
keymap("x", "<A-e>", ":move '<-2<CR>gv-gv", options)

-- keymap("v", "h", '"_dP', opts) -- Makes it so that you keep your currently copied item and not the one you pasted over/replaced

-- Move the focused pane to the left/bottom/top/right
keymap('n', '<C-P>', '<C-w>H', options)
keymap('n', '<C-N>', '<C-w>J', options)
keymap('n', '<C-E>', "<C-w>K", options)
keymap('n', '<C-I>', "<C-w>L", options)

-- Focus the pane to the left/bottom/top/right
keymap('n', '<C-p>', '<C-w>h', options)
keymap('n', '<C-n>', '<C-w>j', options)
keymap('n', '<C-e>', "<C-w>k", options)
keymap('n', '<C-i>', "<C-w>l", options)

-- Resize panes
keymap('n', '<CA-p>', ":resize -2<CR>", options)
keymap('n', '<CA-n>', ":vertical resize +2<CR>", options)
keymap('n', '<CA-e>', ":resize -2<CR>", options)
keymap('n', '<CA-i>', ":vertical resize +2<CR>", options)

keymap('i', 'rt', "<Esc>", options)

