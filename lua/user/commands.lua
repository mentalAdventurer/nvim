------------------------------------------------------------------------
--                           User Commands                            --
------------------------------------------------------------------------

local command = vim.api.nvim_create_user_command

command("OpenNote", "!openNote %", {})
command("OpenNote", "!openNote %", {})
command("ShotNote", "!$HOME/.config/nvim/script/screenshotNote %", {})

command("Format", "lua vim.lsp.buf.format()", {})
command("MakeTags", "!ctags -R .", {})

command("AutoCmp", 'lua require("cmp").setup.buffer { enabled = True }', {})
command("NoAutoCmp", 'lua require("cmp").setup.buffer { enabled = False }', {})
