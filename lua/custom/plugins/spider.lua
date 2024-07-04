return {
    {
        "chrisgrieser/nvim-spider",
        keys = {
            -- Lazy loading on keystroke, .setup() call is optional
            {
                "w",
                "<cmd>lua require('spider').motion('w')<CR>",
                mode = { "n", "o", "x" },
                desc = "Spider-w"
            },
            {
                "e",
                "<cmd>lua require('spider').motion('e')<CR>",
                mode = { "n", "o", "x" },
                desc = "Spider-e"
            },
            {
                "b",
                "<cmd>lua require('spider').motion('b')<CR>",
                mode = { "n", "o", "x" },
                desc = "Spider-b"
            },
        },
        config = function()
            require('spider').setup({
                skipInsignificantPunctuation = false,
            })
        end
    },
}
