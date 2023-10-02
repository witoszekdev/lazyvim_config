return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>pd",
        "<leader>fe",
        desc = "Explorer NeoTree (root dir)",
        remap = true,
      },
      {
        "<leader>pD",
        "<leader>fE",
        desc = "Explorer NeoTree (current dir)",
        remap = true,
      },
    },
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
        },
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = function()
        local cmp = require("cmp")
        return {
          mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          }),
        }
      end,
    },
  },
}
