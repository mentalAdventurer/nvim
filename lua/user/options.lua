------------------------------------------------------------------------
--                              Options                               --
------------------------------------------------------------------------

vim.opt.termguicolors = true
vim.opt.wildmenu = true
vim.opt.laststatus = 2
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.undofile = true

vim.opt.smartindent = true
vim.opt.showtabline = 2
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.background = "dark" 
-- or "light" for light mod
-- vim.cmd([[colorscheme gruvbox]])
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]