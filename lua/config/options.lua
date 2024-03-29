-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--

local opt = vim.opt
opt.incsearch = true
opt.hlsearch = false
opt.clipboard = "" -- Don't Sync with sys clipboard
-- change default shell to bash (might cause lsp errors)
-- opt.shell = "powershell"
-- opt.shellquote = "\\"
-- opt.shellxquote = ""
