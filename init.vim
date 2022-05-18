
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

-- TREESITTER-CONFIG
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
require "fabian.lsp"
require "fabian.treesitter"
require "fabian.telescope"
require "fabian.lualine"
require "fabian.snippets"

EOF
