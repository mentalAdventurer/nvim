------------------------------------------------------------------------
--                              Plugins                               --
------------------------------------------------------------------------

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

-- Snippets
Plug 'SirVer/ultisnips'


-- theme
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lualine/lualine.nvim'

-- native lsp
Plug 'neovim/nvim-lspconfig'
Plug 'honza/vim-snippets'

-- treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

-- Null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'

vim.call('plug#end')
