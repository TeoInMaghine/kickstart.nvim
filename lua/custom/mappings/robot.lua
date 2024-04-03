-- Open current file in Google Chrome
vim.keymap.set({ 'n' }, '<leader>oc', ':exe \':silent !google-chrome %\'<CR>',
    { silent = true, desc = '[O]pen in [C]hrome' })
-- Open in individual output in Google Chrome
vim.keymap.set({ 'n' }, '<leader>oo',
    ':exe \':silent !google-chrome \' .. getcwd() .. \'/test-suite/output_runrobot/log.html\'<CR>',
    { silent = true, desc = '[O]pen [O]utput in [C]hrome' })

-- Go to A14
vim.keymap.set({ 'n' }, 'ga', ':cd ~/git/testSct/a14/obc-fsw-test-scripts-sct/com.invap.obcfsw.scripts/<CR>',
    { silent = true, desc = '[G]o to [A]14' })
-- Go to Sabiamar
vim.keymap.set({ 'n' }, 'gs', ':cd ~/git/testSct/a14/obc-fsw-test-scripts-sct/com.invap.obcfsw.scripts/<CR>',
    { silent = true, desc = '[G]o to [S]abiamar' })

