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
	-- optional: lazy-load on command
	cmd = {
		"DiffviewOpen",
		"DiffviewToggle",
		"DiffviewFileHistory",
		"DiffviewDiffFiles",
		"DiffviewLog",
	},
}
