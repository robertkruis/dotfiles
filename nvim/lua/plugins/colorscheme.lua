return {
  -- disable default colorschemes
  { "folke/tokyonight.nvim", enabled = false },

  -- add custom colorschemes
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "sainnhe/everforest",
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.gruvbox_material_background = "soft"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_show_eob = 0
	  vim.g.gruvbox_material_float_style = "dim"
    end,
  },

  -- change the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
