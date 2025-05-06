-- Paste the last yank
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"0p', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"0P', { silent = true })

-- Switch lines
vim.keymap.set({ 'n' }, '<A-j>', ':m .+1<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<A-k>', ':m .-2<CR>', { silent = true })
vim.keymap.set({ 'i' }, '<A-j>', '<Esc>:m .+1<CR>gi', { silent = true })
vim.keymap.set({ 'i' }, '<A-k>', '<Esc>:m .-2<CR>gi', { silent = true })
vim.keymap.set({ 'v' }, '<A-j>', ':m \'>+1<CR>gv', { silent = true })
vim.keymap.set({ 'v' }, '<A-k>', ':m \'<-2<CR>gv', { silent = true })

-- Delete trailing spaces, one line and all lines
vim.keymap.set({ 'n' }, '<leader>ts', ':s/<Space>*$//<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>ats', ':%s/<Space>*$//<CR>', { silent = true })

-- Enter visual block mode by pressing v in visual mode
vim.keymap.set({ 'v' }, 'v', '<C-V>', { silent = true })
