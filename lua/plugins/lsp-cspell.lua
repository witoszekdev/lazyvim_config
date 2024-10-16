return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "davidmh/cspell.nvim",
    },
    opts = function(_, opts)
      local cspell = require("cspell")
      opts.sources = vim.list_extend(opts.sources or {}, {
        cspell.diagnostics,
        cspell.code_actions,
      })
    end,
  },
}
