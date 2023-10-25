return {

  -- add neogit
  {
    "NeogitOrg/neogit",
    version = false,
	dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      --"sindrets/diffview.nvim",        -- optional
      --"ibhagwan/fzf-lua",              -- optional
    },
    config = {
	  kind = "split"
	},
  },
}
