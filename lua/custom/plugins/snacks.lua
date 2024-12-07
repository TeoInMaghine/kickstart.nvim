return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- Y E S
            bigfile = { enabled = true },
            quickfile = { enabled = true },
            -- bufdelete could be useful
            -- gitbrowse could be useful (if it works with gitlab mostly)

            -- it's slightly better than the default one
            statuscolumn = { enabled = true },

            -- i don't notice a difference with this one,
            -- but maybe i'll change my opinion at work
            -- it should show lsp references
            -- words = { enabled = true },
        },
    }
}
