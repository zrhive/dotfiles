return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        section_separators = " ",
        component_separators = "",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "buffers",
            show_filename_only = false,
            show_modified_status = false,
          },
          {
            "lsp_status",
            icon = false,
            symbols = {
              spinner = { "", "", "", "", "", "" },
              -- done = "",
              separator = "",
            },
            show_name = false,
          },
        },
        lualine_x = { "searchcount", "encoding", "fileformat" },
        lualine_y = { "diff", "diagnostics" },
        lualine_z = { "location", "progress" },
      },
    })
  end,
}
