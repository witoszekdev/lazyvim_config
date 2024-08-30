return {
  -- git client
  {
    "tpope/vim-fugitive",
    init = function()
      vim.cmd([[
        command! -nargs=0 Gp :Git push
        command! -nargs=0 Gpf :Git push --force-with-lease
        command! -nargs=1 Gco :Git checkout <f-args>
        command! -nargs=1 Gcb :Git checkout -b <f-args>
        command! -nargs=0 Gl :Git autopull

        " Use :close instead of :q
        cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'close' : 'q')<CR>
      ]])
    end,
  },
  { "tpope/vim-surround" },
  { "tpope/vim-rhubarb" },
  { "tpope/vim-abolish" },
  { "tpope/vim-dispatch" },
  {
    "tummetott/unimpaired.nvim",
    event = "VeryLazy",
    opts = {
      -- add options here if you wish to override the default settings
    },
  },
  -- {
  --   "ThePrimeagen/harpoon",
  --   branch = "harpoon2",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     local harpoon = require("harpoon")
  --     harpoon:setup()
  --   end,
  --   keys = {
  --     {
  --       "<leader>mc",
  --       function()
  --         require("harpoon"):list():append()
  --       end,
  --       desc = "Add file to harpoon",
  --     },
  --     {
  --       "<leader>ma",
  --       function()
  --         local harpoon = require("harpoon")
  --         harpoon.ui:toggle_quick_menu(harpoon:list())
  --       end,
  --       desc = "Open harpoon menu",
  --     },
  --     {
  --       "<leader>mt",
  --       function()
  --         local conf = require("telescope.config").values
  --         local function toggle_telescope(harpoon_files)
  --           local file_paths = {}
  --           for _, item in ipairs(harpoon_files.items) do
  --             table.insert(file_paths, item.value)
  --           end
  --
  --           require("telescope.pickers")
  --             .new({}, {
  --               prompt_title = "Harpoon",
  --               finder = require("telescope.finders").new_table({
  --                 results = file_paths,
  --               }),
  --               previewer = conf.file_previewer({}),
  --               sorter = conf.generic_sorter({}),
  --             })
  --             :find()
  --         end
  --         toggle_telescope(require("harpoon"):list())
  --       end,
  --       desc = "Open telescope window",
  --     },
  --   },
  -- },

  -- :Reject and :Keep for qfl, sync location
  {
    "stevearc/qf_helper.nvim",
    config = function()
      require("qf_helper").setup()
    end,
  },

  -- super duper search and replace
  -- {
  --   "nvim-pack/nvim-spectre",
  --   config = function()
  --     require("spectre").setup()
  --   end,
  -- },

  -- file utils
  {
    "chrisgrieser/nvim-genghis",
    dependencies = { "stevearc/dressing.nvim" },
    config = function()
      require("genghis").setup({
        backdrop = {
          enabled = true,
          blend = 50,
        },
      })
    end,
  },

  -- conflicts resoliution
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = true,
      })
    end,
  },

  -- better diff view
  -- {
  --   "sindrets/diffview.nvim",
  --   -- lazy = true,
  --   -- cmd = {
  --   --   "DiffviewOpen",
  --   --   "DiffviewClose",
  --   --   "DiffviewToggleFiles",
  --   --   "DiffviewFocusFiles",
  --   --   "DiffviewRefresh",
  --   -- },
  --   config = function()
  --     require("diffview").setup({
  --       use_icons = true,
  --     })
  --   end,
  -- },
}
