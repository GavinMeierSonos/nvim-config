-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Fuzzy Finder with deps
  use "nvim-lua/plenary.nvim"
  -- ./telescope.lua
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- ./treesitter.lua
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  -- uses defaults
  use('nvim-treesitter/playground')
  -- ./harpoon.lua
  use('theprimeagen/harpoon')
  --  ./undotree.lua
  use('mbbill/undotree')
  -- ./fugitive.lua
  use('tpope/vim-fugitive')
  -- game to pratice movements
  use('theprimeagen/vim-be-good')
  -- ./floating_terminal.lua
  use "numToStr/FTerm.nvim"
  -- ./prettier.lua
  use("sbdchd/neoformat")
  -- uses defaults
  use('f-person/git-blame.nvim')
  -- ./file_explorer.lua
  --  use {  'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons', },}
  -- ./lsp.lua
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- 🎨 THEMES 🎭

  -- use({ 'rose-pine/neovim', as = 'rose-pine', config = function() require("rose-pine").setup({ disable_background = true, dark_variant = 'main', })
  --  vim.cmd('colorscheme rose-pine')
  --	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- end })

  -- I tend to like this theme more 🤷‍♂️
  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
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
    end
  })
end)
