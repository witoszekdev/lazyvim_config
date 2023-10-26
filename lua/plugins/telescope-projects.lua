return {
  {
    "telescope.nvim",
    dependencies = {
      "cljoly/telescope-repo.nvim",
      config = function()
        require("lazyvim.util").on_load("telescope.nvim", function()
          require("telescope").load_extension("repo")
        end)
      end,
      cmd = { "Telescope repo lisr" },
      event = "VeryLazy",
      keys = {
        {
          "<leader>fP",
          "<cmd>Telescope repo list search_dirs=~/PROJECTS<CR>",
          desc = "Repositories",
        },
      },
    },
  },
}
