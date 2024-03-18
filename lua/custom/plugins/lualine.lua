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
                    lualine_a = {'mode'},
                    lualine_b = {'branch'},
                    lualine_c = {}, -- Eventually I would put the LSP load progress
                    lualine_x = {'diagnostics'},
                    lualine_y = {'location'},
                    lualine_z = {'buffers'}
                }
            })
        end
    },
}
