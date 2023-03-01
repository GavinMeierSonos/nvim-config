-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Fuzzy Finder

  use "nvim-lua/plenary.nvim"
  
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1', 
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
-- Theme
-- use({ 'rose-pine/neovim', as = 'rose-pine', config = function() require("rose-pine").setup({ disable_background = true, dark_variant = 'main', }) 
--  vim.cmd('colorscheme rose-pine') 
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end })

use ({ "catppuccin/nvim", as = "catppuccin", 
config = function ()
  require("catppuccin").setup({
     flavour = "mocha",
      background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
     term_colors = true,
     transparent_background = false,
     integrations = {
        nvimtree = true,
        harpoon = true,
        telescope = true,
        treesitter = true
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  })
  vim.cmd('colorscheme catppuccin')
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end })

-- Tree Sitter
   use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
-- Harpoon
   use('theprimeagen/harpoon')
-- Tree Sitter Playground
   use ('nvim-treesitter/playground')
   -- UndoTree
   use('mbbill/undotree')
   -- Git
   use('tpope/vim-fugitive')

   -- Lanuage Server
   use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
  -- Vim game
  use('theprimeagen/vim-be-good')
  -- Floating terminal
  use "numToStr/FTerm.nvim"

  use("sbdchd/neoformat")

  -- file explorer
  -- commented out for now till I can get the leader pv working and decide if I like the tree on the side
--  use {  'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons', },}
  use('f-person/git-blame.nvim')

end)
