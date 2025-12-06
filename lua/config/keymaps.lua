local map = vim.keymap.set

-- Run current TypeScript file with <leader>cn
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'typescript', 'typescriptreact' },
  callback = function(event)
    map('n', '<leader>cn', function()
      vim.cmd('terminal npx ts-node ' .. vim.fn.expand '%')
    end, {
      buffer = event.buf,
      desc = 'Run Current TypeScript File',
    })
  end,
})
---------------CUSTOM which-key GROUP ----------------
-- -- 1. Define the +typescript group
-- local wk = require 'which-key'
--
-- wk.add {
--   {
--     '<leader>t',
--     group = 'typescript',
--     icon = '',
--   },
-- }
