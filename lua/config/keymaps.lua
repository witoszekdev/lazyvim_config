-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<C-s>", "<cmd>lua require('tsht').nodes()<CR>")
-- vim.keymap.set("n", "<leader>s", "<cmd>lua require('spectre').open_visual()<CR>")
