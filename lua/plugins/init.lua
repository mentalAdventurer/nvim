return {
	"nvim-treesitter/nvim-treesitter",
	-- Theme
	"nvim-lualine/lualine.nvim",
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },
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
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
