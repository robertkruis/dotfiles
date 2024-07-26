return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        keywords = "italic",
        comments = "italic",
      },
    },
  },
  -- change the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onenord",
    },
  },
}
