------------------------------------------------------------------------
--                              Plugins                               --
------------------------------------------------------------------------

return require('packer').startup(function(use)
vim.call('plug#begin', '~/.config/nvim/plugged')

-- telescope requirements
use 'nvim-lua/popup.nvim'
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use 'nvim-telescope/telescope-fzy-native.nvim'

-- Snippets
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use 'rafamadriz/friendly-snippets'

-- theme
use 'ellisonleao/gruvbox.nvim'
use 'nvim-lualine/lualine.nvim'
use('catppuccin/nvim',{['as'] = 'catpuccin'})

-- native lsp
use 'neovim/nvim-lspconfig'
use 'honza/vim-snippets'

-- cmp plugins
use "hrsh7th/nvim-cmp" -- The completion plugin
use "hrsh7th/cmp-buffer" -- buffer completions
use "hrsh7th/cmp-path" -- path completions
use "hrsh7th/cmp-cmdline" -- cmdline completions
use "saadparwaiz1/cmp_luasnip" -- snippet completions
use "hrsh7th/cmp-nvim-lsp"

-- treesitter
use 'nvim-treesitter/nvim-treesitter'

-- Null-ls
use 'jose-elias-alvarez/null-ls.nvim'
end)
