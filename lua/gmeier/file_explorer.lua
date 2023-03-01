-- Currently not loading this in in init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local tree = require("nvim-tree")

tree.setup()

-- empty setup using defaults
vim.keymap.set("n", "<C-b>", function() tree.toggle() end)
    
