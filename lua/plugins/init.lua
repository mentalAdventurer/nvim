return {
	"nvim-treesitter/nvim-treesitter",
	-- Theme
	"nvim-lualine/lualine.nvim",
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },
	-- LSP (native)
	"neovim/nvim-lspconfig",
	-- Tmux
	"christoomey/vim-tmux-navigator",
	-- Git
	{
		"FabijanZulj/blame.nvim",
		config = function()
			require("blame").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	-- Aerial
	"stevearc/aerial.nvim",
	-- Copilot
	{
		"zbirenbaum/copilot.lua",
		config = function()
			require("copilot").setup()
		end,
	},
}
