return {
  -- git client
  {
    "tpope/vim-fugitive",
    init = function()
      vim.cmd([[
        command! 
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
  { "tpope/vim-abolish" },
  { "tpope/vim-dispatch" },
  { "tpope/vim-unimpaired" },
  { "ThePrimeagen/harpoon" },

  -- :Reject and :Keep for qfl, sync location
  {
    "stevearc/qf_helper.nvim",
    config = function()
      require("qf_helper").setup()
    end,
  },

  -- super duper search and replace
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup()
    end,
  },

  -- file utils
  {
    "chrisgrieser/nvim-genghis",
    dependencies = { "stevearc/dressing.nvim" },
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
}
