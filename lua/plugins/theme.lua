return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      local colorscheme = os.getenv("COLORSCHEME")
      if colorscheme == "light" then
        vim.o.background = "light"
      end
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
