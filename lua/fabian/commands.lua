------------------------------------------------------------------------
--                           User Commands                            --
------------------------------------------------------------------------

local command = vim.api.nvim_create_user_command

command('OpenNote','!openNote %',{})
command('OpenNote', '!openNote %', {})
command('ShotNote', '!$HOME/.config/nvim/script/screenshotNote %', {})

command('Format','lua vim.lsp.buf.formatting()',{})
command('MakeTags', '!ctags -R .', {}) 
