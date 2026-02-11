return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = true, auto_refresh = true },
		filetypes = {
			python = true,
			c = true,
			markdown = true,
			help = true,
			gitcommit = true,
			init = true,
		},
	},
}
