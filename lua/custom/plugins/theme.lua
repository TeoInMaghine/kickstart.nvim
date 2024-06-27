return {
    { -- Theme inspired by Monokai Pro, more desaturated
        'sainnhe/sonokai',
        priority = 1000,
        config = function()
            vim.g.sonokai_style = 'default'
            vim.cmd.colorscheme 'sonokai'
        end,
    },
}
