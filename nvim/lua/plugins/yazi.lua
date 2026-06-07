---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },

  keys = {
    {
      "<leader>y",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      "<leader>Y",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    {
      "<leader>e",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  ---@type YaziConfig | {}
  opts = {
    open_for_directories = true,
    future_features = { use_cwd_file = false },
  },
}
