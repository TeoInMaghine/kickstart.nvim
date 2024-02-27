return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'rmagatti/auto-session' },
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
                    lualine_b = {require("auto-session.lib").current_session_name},
                    lualine_c = {'branch'},
                    lualine_x = {'diagnostics'},
                    lualine_y = {'location'},
                    lualine_z = {'buffers'}
                }
            })
        end
    },
}
