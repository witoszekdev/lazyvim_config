return {
  {
    "linux-cultist/venv-selector.nvim",
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        poetry_path = "~/.local/pipx/venvs/poetry",
      })
    end,
  },
}
