------------------------------------------------------------------------
--                              Options                               --
------------------------------------------------------------------------

vim.opt.termguicolors = true
vim.opt.wildmenu = true
vim.opt.laststatus = 2
vim.opt.incsearch = true
vim.opt.ignorecase = false

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.undofile = true

vim.opt.smartindent = true
vim.opt.showtabline = 2
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true

vim.opt.background = "dark" 

vim.opt.spelllang = 'en_us'
vim.opt.spell = false


-- Theme
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]
