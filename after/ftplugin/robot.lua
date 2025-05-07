-- This is to align with team conventions & not have unnecessary diffs
vim.o.fixeol = false
vim.opt_local.spell = true

-- Setting tabstop & the others doesn't exactly work, it sometimes aligns by 4-space columns
vim.keymap.set({ 'i' }, '<Tab>', '<Space><Space><Space><Space>', { silent = true })
-- Could make Backspace remove up to 4 spaces, for now I won't do it though

-- Satellital section

-- Copy execution of individual script to clipboard, to paste in terminal
vim.keymap.set({ 'n' }, '<Leader>cs', function() CopyToRunScriptFromConsole() end,
    { silent = true, desc = 'Run in [C]onsole: [S]cript' })

-- Copy execution of individual TestCase to clipboard, to paste in terminal
-- Must be with the cursor placed on the Test Case
vim.keymap.set({ 'n' }, '<Leader>ct', function() CopyToRunTestCaseFromConsole() end,
    { silent = true, desc = 'Run in [C]onsole: [T]est Case' })

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

-- RMA UC Section

-- Copy command to execute individual suite, to paste in the terminal
vim.keymap.set({ 'n' }, '<Leader>cus', function() CopyToRunUcSuiteFromConsole() end,
    { silent = true, desc = 'Run in [C]onsole: RMA [U]C [S]uite' })

-- Copy command to execute individual suite, to paste in the terminal
-- Must be done with the cursor placed on the Test Case
vim.keymap.set({ 'n' }, '<Leader>cut', function() CopyToRunUcTestCaseFromConsole() end,
    { silent = true, desc = 'Run in [C]onsole: RMA [U]C [T]est Case' })

function CopyToRunUcSuiteFromConsole()
    local file_name_without_extension = vim.fn.expand("%:t:r")
    vim.cmd('redir @+ | echon "robot --argumentfile data/arguments.txt --suite ' ..
        file_name_without_extension .. ' tests/" | redir END')
    return ""
end

function CopyToRunUcTestCaseFromConsole()
    -- If the cursor is in the TestCase, it will copy that
    vim.cmd.normal{'0Y'}
    local test_case = vim.fn.getreg("+")

    vim.cmd('redir @+ | echon "robot --argumentfile data/arguments.txt --test ' ..
        test_case .. ' tests/" | redir END')
    return ""
end
