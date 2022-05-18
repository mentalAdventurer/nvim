------------------------------------------------------------------------
--                              Keymaps                               --
------------------------------------------------------------------------

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","

-- change to shifted keybindings
keymap("n", "j", "h", opts)
keymap("n", "k", "j", opts)
keymap("n", "l", "k", opts)
keymap("n", "ö", "l", opts)
keymap("n", "gj", "gh", opts)
keymap("n", "gk", "gj", opts)
keymap("n", "gl", "gk", opts)
keymap("n", "gö", "gl", opts)

-- change window navigation to shifted keybindings
keymap("n", "<c-w>j", "<c-w>h", opts)
keymap("n", "<c-w>k", "<c-w>j", opts)
keymap("n", "<c-w>l", "<c-w>k", opts)
keymap("n", "<c-w>ö", "<c-w>l", opts) 

-- adjustment to german keyboard
keymap("n", "ü", "{", opts)
keymap("n", "+", "}", opts)

-- lsp keybindings
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
