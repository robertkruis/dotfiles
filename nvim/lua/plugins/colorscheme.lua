return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    opts = {
      dark_variant = "moon",
      enable = {
        legacy_highlights = false,
      },
      styles = {
        italic = false,
      },
      highlight_groups = {
        Comment = { italic = true },
        Keyword = { italic = true },
      },
    },
  },
  -- change the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
