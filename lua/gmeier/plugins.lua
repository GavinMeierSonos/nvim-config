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
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
    require("rose-pine").setup({
	    disable_background = false,
	    dark_variant = 'main',
    })

    vim.cmd('colorscheme rose-pine')
    end
    })

--  use { "catppuccin/nvim", as = "catppuccin",}  -- Theme

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
end)
