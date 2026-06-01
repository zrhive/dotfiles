require("config")

local servers = {
    "lua_ls",
    "nixd",
    "clangd",
    "bashls",
    "yamlls",
    "tombi"
}

-- enable servers
vim.lsp.enable(servers)

-- catppuccin theme
vim.cmd.colorscheme "catppuccin-nvim"
