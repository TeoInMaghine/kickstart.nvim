-- Big line jump
vim.keymap.set({ 'n', 'v' }, 'J', '5jzz', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'K', '5kzz', { silent = true })
-- Already mapped to LSP Hover Documentation: vim.keymap.set('n', '<leader>k', 'K', { silent = true })
vim.keymap.set('n', '<leader>j', 'J', { silent = true })

-- More comfy home and end of line
vim.keymap.set({ 'n', 'v' }, 'H', function() LineHome() end, { silent = true })
vim.keymap.set({ 'o' }, 'H', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'L', function() LineEnd() end, { silent = true })
vim.keymap.set({ 'o' }, 'L', 'g_', { silent = true })

-- Makes H work like Home
function LineHome()
    local x = vim.fn.col('.')
    vim.cmd("normal ^")
    if x == vim.fn.col('.') then
        vim.cmd("normal 0")
    end
    return ""
end

-- Makes L work like End
function LineEnd()
    local x = vim.fn.col('.')
    vim.cmd("normal g_")
    if x == vim.fn.col('.') then
        vim.cmd("normal $")
    end
    return ""
end

-- After gg or G, be able to use 'g to jump back
vim.keymap.set({ 'n', 'v' }, 'gg', 'mggg', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'G', 'mgG', { silent = true })

-- Half page up and down
vim.keymap.set({ 'n', 'v' }, '<C-B>', '<C-B>zz', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-D>', '<C-D>zz', { silent = true })

