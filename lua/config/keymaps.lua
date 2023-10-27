-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<C-s>", "<cmd>lua require('tsht').nodes()<CR>")
vim.keymap.set("n", "<C-=>", "<cmd>vert resize +10<CR>", { noremap = true })
vim.keymap.set("n", "<C-->", "<cmd>vert resize -10<CR>", { noremap = true })
-- vim.keymap.set("n", "<leader>s", "<cmd>lua require('spectre').open_visual()<CR>")

-- neovide specific keymaps
if vim.g.neovide then
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<D-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<D-->", function()
    change_scale_factor(1 / 1.25)
  end)
  -- vix cmd+v not pasting stuff
  vim.keymap.set("i", "<D-v>", "<C-r>*<CR>", { noremap = true })
end
