require('gitblame').setup {
     --Note how the `gitblame_` prefix is omitted in `setup`
    enabled = false,
}

require("blame").setup()


require('gitsigns').setup()
