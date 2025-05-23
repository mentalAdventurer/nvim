------------------------------------------------------------------------
--                              Plugins                               --
------------------------------------------------------------------------


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-treesitter/nvim-treesitter",
	-- Telescope
	'nvim-lua/popup.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	'nvim-telescope/telescope-fzy-native.nvim',
	-- Snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"honza/vim-snippets",
	-- Theme
	"nvim-lualine/lualine.nvim",
    {"folke/tokyonight.nvim", lazy = false, priority = 1000},
	-- LSP (native) 
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"hrsh7th/cmp-cmdline", -- cmdline completions
    "hrsh7th/cmp-nvim-lsp-signature-help",
    -- Tmux
    "christoomey/vim-tmux-navigator",
    -- Git
    "FabijanZulj/blame.nvim",
    "lewis6991/gitsigns.nvim",
    -- Aerial
    "stevearc/aerial.nvim",
})

require("blame").setup()
require("gitsigns").setup()
