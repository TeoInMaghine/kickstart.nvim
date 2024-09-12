return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>dw",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "[W]orkspace [D]iagnostics",
        },
        {
            "<leader>dd",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "[D]ocument [D]iagnostics",
        }
    }
}
