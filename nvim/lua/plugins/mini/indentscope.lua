return {
  "nvim-mini/mini.indentscope",
  version = "*",

  opts = {
    draw = {
      -- animation = function()
      --   require("mini.indentscope").gen_animation.none()
      -- end,
      -- animation = require("mini.indentscope").gen_animation.none(),
    },

    options = {
      -- border = "bottom",
      try_as_border = true,
    },

    mappings = {
      object_scope = "ss",
      object_scope_with_border = "si",
    },

    -- symbol = "| ",
  },
}
