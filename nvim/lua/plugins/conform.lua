return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        nix = { "nixfmt" },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
        async = false,
      },
    })

    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
