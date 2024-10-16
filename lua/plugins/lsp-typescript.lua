return {
  -- {
  --   "jose-elias-alvarez/typescript.nvim",
  --   dependencies = {
  --     "nvimtools/none-ls.nvim",
  --   },
  --   config = function()
  --     require("null-ls").register({
  --       require("typescript.extensions.null-ls.code-actions"),
  --     })
  --     require("typescript").setup({
  --       debug = false,
  --     })
  --   end,
  --   keys = {
  --     {
  --       "<leader>cI",
  --       function()
  --         require("typescript").actions.addMissingImports()
  --       end,
  --       desc = "Add missing imports",
  --     },
  --     {
  --       "<leader>cU",
  --       function()
  --         require("typescript").actions.removeUnused()
  --       end,
  --       desc = "Remove unused imports",
  --     },
  --     -- {
  --     --   "<leader>cZ",
  --     --   function()
  --     --     vim.ui.input({ prompt = "Enter new file name" }, function(input)
  --     --       if input then
  --     --         require("typescript").renameFile(vim.fn.expand("%"), input)
  --     --       else
  --     --         print("No input provided")
  --     --       end
  --     --     end)
  --     --   end,
  --     --   desc = "Rename file",
  --     -- },
  --   },
  -- },

  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        vtsls = {
          settings = {
            complete_function_calls = true,
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                -- disable due to error
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },

  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },

  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       tsserver = {
  --         keys = {
  --           {
  --             "<leader>cI",
  --             function()
  --               vim.lsp.buf.code_action({
  --                 apply = true,
  --                 context = {
  --                   only = { "source.addMissingImports.ts" },
  --                   diagnostics = {},
  --                 },
  --               })
  --             end,
  --             desc = "Add missing imports",
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
