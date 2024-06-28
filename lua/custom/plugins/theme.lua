return {
    { -- Theme inspired by Monokai Pro, more desaturated
        'sainnhe/sonokai',
        priority = 1000,
        config = function()
            if (string.find(vim.fn.getcwd(), "sm")) then
                vim.g.sonokai_style = 'espresso'
            elseif (string.find(vim.fn.getcwd(), "obc")) then
                vim.g.sonokai_style = 'andromeda'
            else
                vim.g.sonokai_style = 'default'
            end
            vim.cmd.colorscheme 'sonokai'
        end,
    },
}
