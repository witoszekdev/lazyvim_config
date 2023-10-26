return {
  {
    "jose-elias-alvarez/typescript.nvim",
    dependencies = {
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("null-ls").register({
        require("typescript.extensions.null-ls.code-actions"),
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          keys = {
            {
              "<leader>cI",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.addMissingImports.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Add missing imports",
            },
          },
        },
      },
    },
  },
}
