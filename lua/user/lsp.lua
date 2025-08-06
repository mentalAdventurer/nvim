local opts = { noremap = true, silent = true }

-- Diagnostic mappings
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- Buffer-local mappings on LSP attach
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

		local bufopts = { noremap = true, silent = true, buffer = bufnr }

		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
		vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, bufopts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		vim.keymap.set("n", "<space>f", vim.lsp.buf.format, bufopts)
		vim.keymap.set("n", "<leader>fl", require("telescope.builtin").lsp_dynamic_workspace_symbols, bufopts)
		vim.keymap.set("n", "grr", require("telescope.builtin").lsp_references, bufopts)
	end,
})

-- Enaable LSP servers
vim.lsp.enable("pyright")
vim.lsp.enable("bashls")
vim.lsp.enable("clangd")
vim.lsp.enable("ruff")
vim.lsp.enable("jsonls")
vim.lsp.enable("fish_lsp")
