return {
  {
    "leoluz/nvim-dap-go",
    opts = function(_, opts)
      local mason_registry = require("mason-registry")

      opts.delve = {
        detached = (vim.loop.os_uname().sysname ~= "Windows_NT"),
        path = mason_registry.get_package("delve"):get_install_path() .. "/dlv",
      }
    end,
  },
}
