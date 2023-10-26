return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    -- todo: use only when mutlple buffers (except tree) are open
    config = function()
      require("window-picker").setup()
    end,
  },
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
          ["l"] = "open_with_window_picker",
          ["s"] = "vsplit_with_window_picker",
        },
      },
    },
  },

  -- todo: fix invalid config
  -- todo: add mapping for opening cmp
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = {
  --     mapping = function()
  --       local cmp = require("cmp")
  --       return {
  --         mapping = cmp.mapping.preset.insert({
  --           ["<Tab>"] = cmp.mapping.select_next_item(),
  --           ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  --         }),
  --       }
  --     end,
  --   },
  -- },
  --
  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() and cmp.get_active_entry() then
            cmp.confirm({ select = true })
          else
            fallback()
          end
        end),
        ["<M-l>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },

  { "folke/tokyonight.nvim", enabled = false },

  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = true },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      log_level = vim.log.levels.DEBUG,
    },
  },
}
