return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = true, auto_refresh = true },
		filetypes = {
			markdown = true,
			help = true,
			gitcommit = true,
		},
	},
}
