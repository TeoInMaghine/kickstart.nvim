return {
    { -- Theme inspired by Monokai Pro, more desaturated
        'sainnhe/sonokai',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'sonokai'
        end,
    },
}
