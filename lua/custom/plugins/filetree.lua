-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    -- unrelated
    config = function()
        -- If you want icons for diagnostic errors, you'll need to define them somewhere:
        vim.fn.sign_define("DiagnosticSignError",
            { text = " ", texthl = "DiagnosticSignError" })
        vim.fn.sign_define("DiagnosticSignWarn",
            { text = " ", texthl = "DiagnosticSignWarn" })
        vim.fn.sign_define("DiagnosticSignInfo",
            { text = " ", texthl = "DiagnosticSignInfo" })
        vim.fn.sign_define("DiagnosticSignHint",
            { text = "󰌵", texthl = "DiagnosticSignHint" })
        require('neo-tree').setup {
            enable_diagnostics = true,
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        -- '.git',
                        -- 'thumbs.db',
                    },
                    never_show = {},
                },
            },
            event_handlers = {
                {
                    event = "file_opened",
                    handler = function(file_path)
                        -- Auto close when opening file
                        require("neo-tree.command").execute({ action = "close" })
                    end
                }
            }
        }
    end,
}
