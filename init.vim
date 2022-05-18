

" KEYBINDINGS:
let mapleader=","
map <F5> :w <bar> :make<kEnter>


" Lsp Settings



"""" LUA SETTINGS:

lua <<EOF

-- Load The Setting
require "fabian.plugins"
require "fabian.options"
require "fabian.keymaps"
require "fabian.commands"
require "fabian.null-ls"
require "fabian.lsp"
require "fabian.treesitter"
require "fabian.telescope"
require "fabian.lualine"
require "fabian.snippets"

EOF
