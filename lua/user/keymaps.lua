------------------------------------------------------------------------
--                              Keymaps                               --
------------------------------------------------------------------------

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","

-- Make Keymap
keymap("n", "<F5>", "<cmd>make<cr>", opts)
keymap("n", "<leader>jj", "<cmd>AerialNavOpen<cr>",opts)
