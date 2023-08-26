return {
  -- disable default colorschemes
  { "folke/tokyonight.nvim", enabled = false },

  -- add custom colorschemes
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  -- {
  --   "sainnhe/everforest",
  --   config = function()
  --     vim.g.everforest_background = "soft"
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },

  -- change the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
