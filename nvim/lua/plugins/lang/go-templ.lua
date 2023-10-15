return {
  -- support Templ
  { "vrischmann/tree-sitter-templ" },

  -- add Templ to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
	  local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	  treesitter_parser_config.templ = {
		install_info = {
  		  url = "https://github.com/vrischmann/tree-sitter-templ.git",
		  files = {"src/parser.c", "src/scanner.c"},
		  branch = "master",
	    },
	  }
	  
	  vim.treesitter.language.register("templ", "templ")
	  
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "templ" })
      end
    end,
  },

  -- add Templ to Mason
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "templ" })
    end,
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {},
      },
    },
  },
}
