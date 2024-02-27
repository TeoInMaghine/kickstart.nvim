-- Easier window switching
vim.keymap.set({ 'n' }, '<C-H>', '<C-W>h', { silent = true })
vim.keymap.set({ 'n' }, '<C-J>', '<C-W>j', { silent = true })
vim.keymap.set({ 'n' }, '<C-K>', '<C-W>k', { silent = true })
vim.keymap.set({ 'n' }, '<C-L>', '<C-W>l', { silent = true })

-- Bigger window width change (overrides height change
vim.keymap.set({ 'n' }, '<C-W>+', '10<C-W>>', { silent = true })
vim.keymap.set({ 'n' }, '<C-W>-', '10<C-W><', { silent = true })

-- Split and go to the split
vim.keymap.set({ 'n' }, '<C-W>v', '<C-W>v<C-W>w', { silent = true })
