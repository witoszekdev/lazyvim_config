-- local harper_config = require("lspconfig.server_configurations.harper_ls")
return {
  -- Optional cspell config: it's annoying, so enable it when needed
  -- {
  --   "nvimtools/none-ls.nvim",
  --   dependencies = {
  --     "davidmh/cspell.nvim",
  --   },
  --   config = function()
  --     local cspell = require("cspell")
  --     require("null-ls").setup({
  --       sources = {
  --         cspell.diagnostics,
  --         cspell.code_actions,
  --       },
  --     })
  --   end,
  -- },
  -- add hrper_ls and ltex (language tool) for spellchecking
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        harper_ls = {
          -- filetypes = vim.tbl_extend("force", harper_config.default_config.filetypes or {}, { "mdx" }),
          filetypes = {
            "markdown",
            "mdx",
            "rust",
            "typescript",
            "typescriptreact",
            "javascript",
            "python",
            "go",
            "c",
            "cpp",
            "ruby",
            "swift",
            "csharp",
            "toml",
            "lua",
            "gitcommit",
            "java",
            "html",
          },
          settings = {
            harper_ls = {
              enabled = {
                "markdown",
                "mdx",
                "rust",
                "typescript",
                "typescriptreact",
                "javascript",
                "python",
                "go",
                "c",
                "cpp",
                "ruby",
                "swift",
                "csharp",
                "toml",
                "lua",
                "gitcommit",
                "java",
                "html",
              },
              codeActions = {
                forceStable = true,
              },
            },
          },
        },
        ltex = {
          settings = {
            ltex = {
              language = "en-US",
              enabled = {
                "bib",
                "gitcommit",
                "markdown",
                "mdx",
                "org",
                "plaintex",
                "rst",
                "rnoweb",
                "tex",
                "pandoc",
                "quarto",
                "rmd",
              },
              checkFrequency = "save",
              -- languageToolHttpServerUri = "http://localhost:8081",
              -- languageToolOrg = {
              --   apiKey = "",
              --   username = "",
              -- },
            },
          },
        },
      },
    },
  },
  {
    "barreiroleo/ltex_extra.nvim",
    branch = "dev",
    ft = { "markdown", "mdx", "tex" },
    opts = {
      ---@type string[]
      -- See https://valentjn.github.io/ltex/supported-languages.html#natural-languages
      load_langs = { "en-US" },
      ---@type "none" | "fatal" | "error" | "warn" | "info" | "debug" | "trace"
      log_level = "none",
      ---@type string File's path to load.
      -- The setup will normalice it running vim.fs.normalize(path).
      -- e.g. subfolder in project root or cwd: ".ltex"
      -- e.g. cross project settings:  vim.fn.expand("~") .. "/.local/share/ltex"
      path = ".ltex",
      ---@deprecated
      init_check = true,
      ---@deprecated
      server_start = false,
      ---@deprecated
      server_opts = nil,
    },
  },
}
