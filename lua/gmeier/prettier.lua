vim.g.neoformat_try_node_exe = 1

-- Prettier formatters
-- Typescript and TSX files
vim.cmd [[autocmd BufWritePre *.ts Neoformat]]
vim.cmd [[autocmd BufWritePre *.tsx Neoformat]]
-- Javascript and React files
vim.cmd [[autocmd BufWritePre *.js Neoformat]]
vim.cmd [[autocmd BufWritePre *.jsx Neoformat]]
-- MD, MDX, JSON,
vim.cmd [[autocmd BufWritePre *.md Neoformat]]
vim.cmd [[autocmd BufWritePre *.mdx Neoformat]]
vim.cmd [[autocmd BufWritePre *.json Neoformat]]

-- Rust
--vim.g.neoformat_enabled_rust = 1
--vim.cmd [[autocmd BufWritePre *.rs Neoformat rustfmt]]
-- YAML
vim.cmd [[autocmd BufWritePre *.yml Neoformat]]
vim.cmd [[autocmd BufWritePre *.yaml Neoformat]]
--vim.g.rustfmt_autosave = 1
-- = "~/.cargo/bin/cargo"
vim.cmd [[autocmd BufWritePre *.rs terminal cargo fmt ]]
--vim.cmd [[autocmd BufWritePre *.rs RustFmt]]
-- Random
--vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
