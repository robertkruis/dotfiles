return {
  -- disable default colorschemes
  { "folke/tokyonight.nvim", enabled = false },

  -- add custom colorschemes
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "sainnhe/everforest",
  },

  -- change the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
