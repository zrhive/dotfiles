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
  -- notify
  -- { "nvim-mini/mini.notify", version = "*", opts = {
  --   lsp_progress = { enable = false },
  -- } },
}
