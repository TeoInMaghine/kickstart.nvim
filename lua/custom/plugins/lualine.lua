return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                icons_enabled = true,
                theme = 'sonokai',
                component_separators = '|',
                section_separators = '',
            },
        },
        config = function()
            require("lualine").setup({
                sections =
                {
                     -- Eventually I could put the LSP load progress
                    lualine_a = {'mode'},
                    lualine_b = {'branch'},
                    lualine_c = {'diff', 'diagnostics'},
                    lualine_x = {'buffers', 'diagnostics'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                }
            })
        end
    },
}
