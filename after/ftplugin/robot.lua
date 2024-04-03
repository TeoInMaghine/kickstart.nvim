-- Setting tabstop & the others doesn't exactly work, it sometimes aligns by 4-space columns
vim.keymap.set({ 'i' }, '<Tab>', '<Space><Space><Space><Space>', { silent = true })

-- Could make Backspace remove up to 4 spaces, for now I won't do it though
-- vim.keymap.set({ 'i' }, '<BS>', function() Backspace() end, { silent = true })

-- function Backspace()
--   local x = vim.fn.col('.')
--   if x then
--     vim.cmd("normal dll")
--     return ""
--   end
--
--   for i=1, 4 do
--     local x = vim.fn.col('.')
--   end
--   -- if x == vim.fn.col('.') then
--   --     vim.cmd("normal 0")
--   -- end
--   vim.cmd("normal dl")
--   vim.cmd("normal dl")
--   return ""
-- end

