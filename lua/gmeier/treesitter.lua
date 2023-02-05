require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { 
	"bash",
	"c", 
	"cpp",
	"cmake",
	"css",
	"dockerfile",
	"go",
	"html",
	"java",
	"javascript",
	"json",
	"lua",
	"markdown",
	"mermaid",
	"proto",
	"regex",
	"rust",
	"scss",
	"solidity",
	"sql",
	"svelte",
	"terraform",
	"tsx",
	"typescript",
	"yaml",
	"zig",
	"vim",
	"help"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
