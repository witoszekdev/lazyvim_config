-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope live_grep<CR>")
-- vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<C-s>", "<cmd>lua require('tsht').nodes()<CR>")
vim.keymap.set("n", "<C-=>", "<cmd>vert resize +10<CR>", { noremap = true })
vim.keymap.set("n", "<C-->", "<cmd>vert resize -10<CR>", { noremap = true })

-- Map p to paste from yank register in normal and visual modes
vim.keymap.set({ "n", "x" }, "p", '"0p', { remap = true, desc = "Paste from yank register" })
vim.keymap.set({ "n", "x" }, "P", '"0P', { remap = true, desc = "Paste before from yank register" })

vim.keymap.set("n", "<leader>p", "p", { noremap = true, desc = "Paste from unnamed register" })
vim.keymap.set("n", "<leader>P", "P", { noremap = true, desc = "Paste before from unnamed register" })

-- vim.keymap.set("n", "<leader>s", "<cmd>lua require('spectre').open_visual()<CR>")
-- vim.keymap.set("v", "<leader>ss", '<esc>:%s/<ctrl-R>"//gc<left><left><left>', { noremap = true })
-- vim.keymap.set("v", "<leader>ss", function()
--   -- Get the visually selected text
--   local start_pos = vim.fn.getpos("'<")
--   local end_pos = vim.fn.getpos("'>")
--   local start_line, start_col = start_pos[2], start_pos[3]
--   local end_line, end_col = end_pos[2], end_pos[3]
--
--   local selected_text
--   if start_line == end_line then
--     -- Selection is on a single line
--     local line = vim.fn.getline(start_line)
--     selected_text = line:sub(start_col, end_col)
--   else
--     -- Selection spans multiple lines
--     local lines = vim.fn.getline(start_line, end_line)
--     lines[1] = lines[1]:sub(start_col)
--     lines[#lines] = lines[#lines]:sub(1, end_col)
--     selected_text = table.concat(lines, "\n")
--   end
--
--   -- Escape special characters in the selected text
--   local escaped_text = vim.fn.escape(selected_text, [[/\]])
--
--   -- Get the contents of the default "0" register
--   local register_content = vim.fn.getreg("0")
--
--   -- Escape special characters in the register content
--   local escaped_register = vim.fn.escape(register_content, [[/\&]])
--
--   -- Construct the substitution command
--   local cmd = string.format("%%s/%s/%s/gc", escaped_text, escaped_register)
--
--   -- Exit visual mode
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
--
--   -- Populate the command line with the substitution command
--   vim.api.nvim_feedkeys(":", "n", false)
--   vim.api.nvim_feedkeys(cmd, "n", false)
-- end, { noremap = true, desc = "Replace selection with register" })

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
