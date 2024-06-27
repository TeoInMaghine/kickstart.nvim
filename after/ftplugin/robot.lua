-- This is to align with team conventions & not have unnecessary diffs
vim.o.fixeol = false

-- Setting tabstop & the others doesn't exactly work, it sometimes aligns by 4-space columns
vim.keymap.set({ 'i' }, '<Tab>', '<Space><Space><Space><Space>', { silent = true })
-- Could make Backspace remove up to 4 spaces, for now I won't do it though

-- Open current file in Google Chrome
vim.keymap.set({ 'n' }, '<leader>oc', ':exe \':silent !google-chrome %\'<CR>',
    { silent = true, desc = '[O]pen in [C]hrome' })
-- Open in individual output in Google Chrome
vim.keymap.set({ 'n' }, '<leader>oo',
    ':exe \':silent !google-chrome \' .. getcwd() .. \'/test-suite/output_runrobot/log.html\'<CR>',
    { silent = true, desc = '[O]pen [O]utput in [C]hrome' })

-- Copy execution of individual script to clipboard, to paste in terminal
vim.keymap.set({ 'n' }, '<Leader>c', function() CopyToRunScriptFromConsole() end,
    { silent = true, desc = 'Run in [C]onsole' })

-- Copy execution of individual TestCase to clipboard, to paste in terminal
-- Must be with the cursor placed on the Test Case
vim.keymap.set({ 'n' }, '<Leader>t', function() CopyToRunTestCaseFromConsole() end,
    { silent = true, desc = 'Run [T]est Case in console' })

function CopyToRunScriptFromConsole()
    local file_path = vim.fn.expand("%:p")
    vim.cmd('redir @+ | echon "robot --variable workspace_path:$PWD --splitlog --consolewidth 160 ' ..
        '--consolecolors on --debugfile ${0##*/}.log --loglevel TRACE --outputdir ./output ' ..
        file_path .. ' && source $PWD/../tools/remove_xml.sh $PWD/test-suite/output_runrobot" | redir END')
    return ""
end

function CopyToRunTestCaseFromConsole()
    -- If the cursor is in the TestCase, it will copy that
    vim.cmd.normal{'0Y'}
    local test_case = vim.fn.getreg("+")

    local file_path = vim.fn.expand("%:p")
    vim.cmd('redir @+ | echon "robot --variable workspace_path:$PWD --splitlog --consolewidth 160 ' ..
        '--consolecolors on --debugfile ${0##*/}.log --loglevel TRACE --outputdir ./output ' ..
        '-t ' .. test_case .. ' ' ..
        file_path .. ' && source $PWD/../tools/remove_xml.sh $PWD/test-suite/output_runrobot" | redir END')
    return ""
end
