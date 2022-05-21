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
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

-- theme
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lualine/lualine.nvim'

-- native lsp
Plug 'neovim/nvim-lspconfig'
Plug 'honza/vim-snippets'

-- cmp plugins
Plug "hrsh7th/nvim-cmp" -- The completion plugin
Plug "hrsh7th/cmp-buffer" -- buffer completions
Plug "hrsh7th/cmp-path" -- path completions
Plug "hrsh7th/cmp-cmdline" -- cmdline completions
Plug "saadparwaiz1/cmp_luasnip" -- snippet completions
Plug "hrsh7th/cmp-nvim-lsp"

-- treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

-- Null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'

vim.call('plug#end')
