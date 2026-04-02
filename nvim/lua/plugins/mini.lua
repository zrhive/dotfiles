-- -------------------------------------- --
-- mini.nvim                              --
-- -------------------------------------- --
-- Library of 40+ independent Lua modules --
-- https://github.com/nvim-mini/mini.nvim --
-- -------------------------------------- --

return {
  { "nvim-mini/mini.comment", version = "*", opts = {
    options = {
      ignore_blank_line = true,
    },
  } },
  { "nvim-mini/mini.pairs", version = "*", opts = {} },
  { "nvim-mini/mini.surround", version = "*", opts = {} },

  -- indentscope
  {
    "nvim-mini/mini.indentscope",
    version = "*",
    opts = {
      options = {
        try_as_border = true,
      },
      mappings = {
        object_scope = "ss",
        object_scope_with_border = "si",
      },
    },
  },

  -- hipatterns
  {
    "nvim-mini/mini.hipatterns",
    version = "*",
    config = function()
      local hipatterns = require("mini.hipatterns")
      hipatterns.setup({
        highlighters = {
          fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
          hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
          todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
          note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      })
    end,
  },

  -- animate
  -- {
  --   "nvim-mini/mini.animate",
  --   version = "*",
  --   config = function()
  --     local animate = require("mini.animate")
  --     animate.setup({
  --       scroll = {
  --         subscroll = animate.gen_subscroll.equal({ max_output_steps = 120 }),
  --       },
  --     })
  --   end,
  -- },

  -- notify
  -- { "nvim-mini/mini.notify", version = "*", opts = {
  --   lsp_progress = { enable = false },
  -- } },
}
