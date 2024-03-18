-- Big line jump
vim.keymap.set({ 'n', 'v' }, 'J', '5jzz', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'K', '5kzz', { silent = true })
-- Already mapped to LSP Hover Documentation: vim.keymap.set('n', '<leader>k', 'K', { silent = true })
vim.keymap.set('n', '<leader>j', 'J', { silent = true })

-- More comfy home and end of line
vim.keymap.set({ 'n', 'v', 'o' }, 'L', 'g_', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'H', '^ze', { silent = true })
vim.keymap.set({ 'o' }, 'H', '^', { silent = true })

-- After gg or G, be able to use 'g to jump back
vim.keymap.set({ 'n', 'v' }, 'gg', 'mggg', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'G', 'mgG', { silent = true })

-- Half page up and down
vim.keymap.set({ 'n', 'v' }, '<C-B>', '<C-B>zz', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-D>', '<C-D>zz', { silent = true })

