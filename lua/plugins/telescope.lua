return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzy-native.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					path_display = { "filename_first" },
					layout_strategy = "vertical",
					layout_config = { height = 0.95, width = 0.8, preview_cutoff = 20 },
					mappings = {
						i = {
							["<C-n>"] = actions.move_selection_next,
							["<C-p>"] = actions.move_selection_previous,
							["<C-c>"] = actions.close,
							["<C-u>"] = actions.preview_scrolling_up,
							["<C-d>"] = actions.preview_scrolling_down,
						},
					},
				},
			})

			-- Optional native sorter
			pcall(telescope.load_extension, "fzy_native")

			-- Keymaps
			local keymap = vim.keymap.set
			local opts = { silent = true, noremap = true }

			keymap("n", "<leader>ff", builtin.find_files, opts)
			keymap("n", "<leader>fh", function()
				builtin.find_files({ hidden = true })
			end, opts)
			keymap("n", "<leader>fg", builtin.live_grep, opts)
			keymap("n", "<leader>fw", builtin.grep_string, opts)
			keymap("n", "<leader>fk", builtin.keymaps, opts)
			keymap("n", "<leader>fb", builtin.buffers, opts)
			keymap("n", "<leader>fd", builtin.diagnostics, opts)
			keymap("n", "<leader>fs", builtin.git_status, opts)
			keymap("n", "<leader>fc", builtin.git_commits, opts)
			keymap("n", "<leader>ft", builtin.treesitter, opts)
		end,
	},
}
