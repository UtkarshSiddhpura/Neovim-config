-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- To use ctrl+backspace
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })

vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader>bb") -- switch buffer
