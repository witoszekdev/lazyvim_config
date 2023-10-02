return {
  -- task runner
  {
    "stevearc/overseer.nvim",
    config = function()
      require("overseer").setup()
    end,
  },

  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    config = function()
      require("refactoring").setup({})
      require("telescope").load_extension("refactoring")
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  { "wsdjeg/vim-fetch" }, -- :e with line numbers
}
