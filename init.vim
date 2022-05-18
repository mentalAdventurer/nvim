" PLUGING:
call plug#begin('~/.config/nvim/plugged')

""" telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

""" Snippets
Plug 'SirVer/ultisnips'


""" theme
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lualine/lualine.nvim'

""" native lsp
Plug 'neovim/nvim-lspconfig'
Plug 'honza/vim-snippets'

""" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}

""" Null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'

""" Tables
""" Plug 'dhruvasagar/vim-table-mode' 

call plug#end()

" BASIC CONFIG:
syntax on 
set termguicolors
set background=dark
colorscheme gruvbox
set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set smartindent
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2	" Displays File Information
set cot=menuone,noinsert,noselect shm+=c "For the Popup menus

filetype plugin on
" Search down into subfolders
" Provides tab-completion fo all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" COMMANDS:
" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R . 

" commands for note taking
command! OpenNote !openNote %
command! ShotNote !$HOME/.config/nvim/script/screenshotNote %

" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the rigth
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" AIRLINE:
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers= 0

" SNIPPETS:
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" KEYBINDINGS:
let mapleader=","
map ü {
map + }
map <F5> :w <bar> :make<kEnter>
noremap j h
noremap k j
noremap l k
noremap ö l
noremap gj gh
noremap gk gj
noremap gl gk
noremap gö gl


" remap window keybindings
noremap <c-w>j <c-w>h
noremap <c-w>k <c-w>j
noremap <c-w>l <c-w>k
noremap <c-w>ö <c-w>l 

" Lsp Settings

command! Format execute 'lua vim.lsp.buf.formatting()'


" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

"""" LUA SETTINGS:

lua <<EOF
-- Load The Settings
require "fabian.options"



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

-- LSP-CONFIG
local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'jedi_language_server', 'clangd', 'bashls' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end

-- null-ls
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
    },
})

EOF
