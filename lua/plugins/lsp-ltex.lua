return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex = {
          settings = {
            ltex = {
              language = "en-US",
              enabled = {
                "bib",
                "gitcommit",
                "markdown",
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
              -- languageToolHttpServerUri = "https://api.languagetoolplus.com",
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
}