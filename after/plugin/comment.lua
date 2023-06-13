require('Comment')

local api = require('Comment.api')

-- Toggle current line (linewise) using C-/
vim.keymap.set('n', '<C-_>', api.toggle.linewise.current)

-- Toggle current line (blockwise) using C-\
vim.keymap.set('n', '<C-\\>', api.toggle.blockwise.current)

