-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
local keymap = vim.keymap

-- nvim-spectre
vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search Replace current",
})

-- To use ctrl+backspace and c-v
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })
keymap.set("t", "<C-H>", "<C-W>")
keymap.set("v", "<C-C>", '"+y')

-- Move Highlighted block
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center Page Jumping
keymap.set("n", "<C-j>", "<C-d>zz")
keymap.set("n", "<C-k>", "<C-u>zz")

-- Don't replace with deleted buffer
keymap.set("x", "p", '"_dP')

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("i", "<C-a>", "<Esc>gg<S-v>G")

keymap.del("n", "<leader>gg")
keymap.del("n", "<leader>gG")
keymap.del("n", "<leader>L")
keymap.del("n", "<leader>bb") -- switch buffer
keymap.del("n", "<leader>ft") -- terminal
keymap.del("n", "<leader>fT") -- terminal
