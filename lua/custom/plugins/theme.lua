return {
    { -- Theme inspired by Monokai Pro, more desaturated
        'sainnhe/sonokai',
        priority = 1000,
        config = function()
            if (require('auto-session.lib').current_session_name == "placeholder") then
                vim.g.sonokai_style = 'andromeda'
            else
                vim.g.sonokai_style = 'default'
            end
            vim.cmd.colorscheme 'sonokai'
        end,
    },
}
