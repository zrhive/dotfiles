require("config")

local servers = {
    "lua_ls",
    "nixd",
    "clangd",
    "bashls",
    "yamlls",
    "taplo",
    "tombi",
}

-- enable servers
vim.lsp.enable(servers)

-- catppuccin theme
vim.cmd.colorscheme "catppuccin-nvim"
