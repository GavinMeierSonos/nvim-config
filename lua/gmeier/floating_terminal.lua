local fterm = require("fterm")

vim.keymap.set('n', '<leader>t', function() fterm.toggle()end)
vim.keymap.set('t', '<Esc>', function() fterm.toggle()end)
