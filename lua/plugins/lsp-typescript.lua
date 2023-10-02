return {
  --   {
  --     "jose-elias-alvarez/typescript.nvim",
  --     dependencies = {
  --       "nvimtools/none-ls.nvim",
  --     },
  --     config = function()
  --       require("null-ls").register({
  --         require("typescript.extensions.null-ls.code-actions"),
  --       })
  --     end,
  --   },
}
