-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- space leader key
vim.g.mapleader = " "

-- requires
require("config.options")
require("config.keymaps")
require("config.autocmds")

require("config.lazy")
require("config.lsp")
