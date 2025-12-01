return {
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },
	-- LSP (native)
	"neovim/nvim-lspconfig",
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
}
