return {
	"dlyongemallo/diffview.nvim",
	version = "*",
	opts = {
		view = {
			cycle_layouts = {
				default = { "diff2_horizontal", "diff1_inline" },
			},
		},
	},
	keys = {
		{
			"<leader>dv",
			function()
				vim.cmd.DiffviewToggle()
			end,
			desc = "Toggle diffview",
		},
		{
			"<leader>dh",
			function()
				vim.cmd.DiffviewFileHistory()
			end,
			desc = "File history",
		},
	},
	-- optional: lazy-load on command
	cmd = {
		"DiffviewOpen",
		"DiffviewToggle",
		"DiffviewFileHistory",
		"DiffviewDiffFiles",
		"DiffviewLog",
	},
}
