-- Easier save, save and quit, quit & quit all
-- Instead of :q I use :bd to close the buffer
-- When I want to close everything I use the :qa mapping (plus closing Neotree)
vim.keymap.set({ 'n' }, '<leader>q', ':bd<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>z', ':wq<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>x', ':Neotree close<CR>:qa<CR>', { silent = true })

-- Switch between buffers
vim.keymap.set({ 'n' }, '<leader>h', ':bp<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>l', ':bn<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<leader>b', ':b ', { silent = true })
vim.keymap.set({ 'n' }, '<C-U>', ':b#<CR>', { silent = true })
-- Delete other buffers (except the current one)
vim.keymap.set({ 'n' }, '<leader>ob', ':%bd|e#|bd#<CR>', { silent = true, desc = 'Delete [O]ther [B]uffers' })



-- Go to Vimrc (I just use 'V currently lol)
vim.keymap.set({ 'n' }, '<leader>gv', ':e $MYVIMRC<CR>/Highlight on yank<CR>',
    { silent = true, desc = '[G]o to [v]imrc (init.lua)' })
-- Source Vimrc
vim.keymap.set({ 'n' }, '<leader>sv', ':so $MYVIMRC<CR>', { silent = true, desc = '[S]ource [v]imrc (init.lua)' })
