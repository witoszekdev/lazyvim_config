return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "davidmh/cspell.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  opts = function(_, opts)
    local cspell_diagnostics = require("cspell.diagnostics")
    local cspell_code_actions = require("cspell.code_actions")
    local util = require("lazyvim.util")

    local function cspell_config_exists()
      local git_root = util.root.get()
      local cspell_config = git_root .. "/.cspell.json"
      return vim.fn.filereadable(cspell_config) == 1
    end

    if cspell_config_exists() then
      opts.sources = vim.list_extend(opts.sources or {}, {
        cspell_diagnostics,
        cspell_code_actions,
      })
    end
  end,
}
