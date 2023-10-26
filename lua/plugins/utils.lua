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

  {
    "ThePrimeagen/refactoring.nvim",
    config = function()
      require("refactoring").setup({})
      require("telescope").load_extension("refactoring")
    end,
  },

  { "echasnovski/mini.align", version = false },

  -- to check:
  -- {
  --   "windwp/nvim-ts-autotag",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter"
  --   }
  -- },
  -- {
  --   "p00f/nvim-ts-rainbow",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter"
  --   },
  --   config = function()
  --     require("nvim-treesitter.configs").setup {
  --       rainbow = {
  --         enable = true,
  --         -- extended_mode = true,
  --         max_file_lines = 10000
  --       }
  --     }
  --   end
  -- },
  -- "gpanders/editorconfig.nvim",
  -- "Vimjas/vim-python-pep8-indent",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end
  -- },
  -- {
  --   "norcalli/nvim-colorizer.lua",
  --   config = function()
  --     require 'colorizer'.setup {
  --       css = {
  --         css = true
  --       },
  --       javascript = {
  --         css = true
  --       },
  --       typescript = {
  --         css = true
  --       }
  --     }
  --   end,
  --   ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "css", "sass", "html" }
  -- },
}
