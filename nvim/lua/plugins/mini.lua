return {
  -- disable which-key
  { "folke/which-key.nvim", enabled = false },

  -- add mini.clue
  {
    "echasnovski/mini.clue",
    version = false,
    config = function()
      local miniclue = require("mini.clue")
      miniclue.setup({
        triggers = {
          -- Leader triggers
          { mode = "n", keys = "<Leader>" },
          { mode = "x", keys = "<Leader>" },

          -- Built-in completion
          { mode = "i", keys = "<C-x>" },

          -- `g` key
          { mode = "n", keys = "g" },
          { mode = "x", keys = "g" },

          -- Marks
          { mode = "n", keys = "'" },
          { mode = "n", keys = "`" },
          { mode = "x", keys = "'" },
          { mode = "x", keys = "`" },

          -- Registers
          { mode = "n", keys = '"' },
          { mode = "x", keys = '"' },
          { mode = "i", keys = "<C-r>" },
          { mode = "c", keys = "<C-r>" },

          -- Window commands
          { mode = "n", keys = "<C-w>" },

          -- `z` key
          { mode = "n", keys = "z" },
          { mode = "x", keys = "z" },
        },
        clues = {
          -- Enhance this by adding descriptions of <Leader> mapping groups
          miniclue.gen_clues.builtin_completion(),
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.registers(),
          miniclue.gen_clues.windows(),
          miniclue.gen_clues.z(),

          -- Custom clues
          { mode = "n", keys = "<Leader>b", desc = "+Buffers" },
          { mode = "n", keys = "<Leader>c", desc = "+Code" },
          { mode = "n", keys = "<Leader>d", desc = "+Debug", postkeys = "<Leader>d" },
          { mode = "n", keys = "<Leader>f", desc = "+Files" },
          { mode = "n", keys = "<Leader>g", desc = "+Git" },
          { mode = "n", keys = "<Leader>q", desc = "+Session" },
          { mode = "n", keys = "<Leader>u", desc = "+UI" },
          { mode = "n", keys = "<Leader>w", desc = "+Window" },
          { mode = "n", keys = "<Leader>x", desc = "+Diagnostics" },
          { mode = "n", keys = "<Leader><Tab>", desc = "+Tabs" },
          { mode = "n", keys = "<Leader>s", desc = "+Search" },
          { mode = "n", keys = "<Leader>t", desc = "+Test" },
        },
        window = {
          delay = 0,
          config = {
            width = "auto",
          },
          scroll_down = "<C-f>",
          scroll_up = "<C-b>",
        },
      })
    end,
  },
}
