------------------------------------------------------------------------
--                              Keymaps                               --
------------------------------------------------------------------------

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","

-- change to shifted keybindings
keymap("", "j", "h", opts)
keymap("", "k", "j", opts)
keymap("", "l", "k", opts)
keymap("", "ö", "l", opts)
keymap("", "gj", "gh", opts)
keymap("", "gk", "gj", opts)
keymap("", "gl", "gk", opts)
keymap("", "gö", "gl", opts)

-- change window navigation to shifted keybindings
keymap("n", "<c-w>j", "<c-w>h", opts)
keymap("n", "<c-w>k", "<c-w>j", opts)
keymap("n", "<c-w>l", "<c-w>k", opts)
keymap("n", "<c-w>ö", "<c-w>l", opts) 

-- adjustment to german keyboard
keymap("n", "ü", "{", opts)
keymap("n", "+", "}", opts)


keymap("n", "<F5>", "<cmd>make<cr>", opts)
