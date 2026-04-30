return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
		keys = {
			{
				"<leader>hs",
				function()
					require("gitsigns").stage_hunk()
				end,
				desc = "Stage hunk",
				mode = { "n", "v" },
			},
			{
				"<leader>hr",
				function()
					require("gitsigns").reset_hunk()
				end,
				desc = "Reset hunk",
				mode = { "n", "v" },
			},
			{
				"<leader>hu",
				function()
					require("gitsigns").undo_stage_hunk()
				end,
				desc = "Undo stage hunk",
				mode = { "n", "v" },
			},
		},
		lazy = false,
	},
}
