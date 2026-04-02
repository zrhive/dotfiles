-- Enabling transparent backgrounn
local function background_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    config = function()
      vim.cmd("colorscheme catppuccin")
      background_transparency()
    end,
  },
}
