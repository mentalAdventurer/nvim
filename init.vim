
" SNIPPETS:
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" KEYBINDINGS:
let mapleader=","
map <F5> :w <bar> :make<kEnter>


" Lsp Settings



" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

"""" LUA SETTINGS:

lua <<EOF

-- Load The Setting
require "fabian.plugins"
require "fabian.options"
require "fabian.keymaps"
require "fabian.commands"
require "fabian.null-ls"
-- LUALINE
require('lualine').setup()

require "fabian.lsp"
require "fabian.treesitter"
require "fabian.telescope"
require "fabian.lualine"
require "fabian.snippets"

EOF
