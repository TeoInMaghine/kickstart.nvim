-- Big line jump
vim.keymap.set({ 'n', 'v' }, 'J', '5jzz', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'K', '5kzz', { silent = true })
-- Already mapped to LSP Hover Documentation: vim.keymap.set('n', '<leader>k', 'K', { silent = true })
vim.keymap.set('n', '<leader>j', 'J', { silent = true })

-- Half page [u]p and [d]own
vim.keymap.set({ 'n', 'v' }, '<C-U>', '<C-U>zz', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-D>', '<C-D>zz', { silent = true })
-- Page [b]ackward and [f]orward
vim.keymap.set({ 'n', 'v' }, '<C-B>', '<C-B>zz', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-F>', '<C-F>zz', { silent = true })

-- More comfy start and end of line
vim.keymap.set({ 'n', 'v', 'o' }, 'H', '_ze', { silent = true })
vim.keymap.set({ 'n', 'v', 'o' }, 'L', 'g_', { silent = true })
