------------------------------------------------------------------------
--                              Snippets                              --
------------------------------------------------------------------------

local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
end

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load("~/.config/nvim/snippets/")

local types = require("luasnip.util.types")
ls.config.set_config({
	history = true, --keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "●", "GruvboxOrange" } },
			},
		},
	},
})

vim.keymap.set({ "i", "s" }, "<a-p>", function()
	if ls.expand_or_jumpable() then
		ls.expand()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<a-l>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<a-h>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })
