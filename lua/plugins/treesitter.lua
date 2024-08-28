return {
  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  --   config = function()
  --     require("treesitter-context").setup({
  --       enable = true,
  --       throttle = true,
  --       max_lines = 10000,
  --       patterns = {
  --         default = {
  --           "class",
  --           "function",
  --           "method",
  --         },
  --       },
  --       exact_patterns = {},
  --     })
  --   end,
  -- },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "andymass/vim-matchup", -- language specific %
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "p00f/nvim-ts-rainbow",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        rainbow = {
          enable = true,
          -- extended_mode = true,
          max_file_lines = 10000,
        },
      })
    end,
  },

  {
    "witoszekdev/nvim-treehopper", -- expand selection (ctrl + s),
    branch = "fix-missing-filetype",
  },

  {
    "cshuaimin/ssr.nvim",
    module = "ssr",
    keys = {
      {
        "<leader>sr",
        function()
          require("ssr").open()
        end,
        desc = "SSR",
      },
    },
    config = function()
      require("ssr").setup({
        border = "rounded",
        min_width = 50,
        min_height = 5,
        max_width = 120,
        max_height = 25,
        adjust_window = true,
        keymaps = {
          close = "q",
          next_match = "n",
          prev_match = "N",
          replace_confirm = "<cr>",
          replace_all = "<leader><cr>",
        },
      })
    end,
  },
}
