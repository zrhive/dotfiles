local M = {}

-- capabilities
local capabilities = require("blink.cmp").get_lsp_capabilities()
M.capabilities = capabilities

-- Buffer-local LSP keymaps
function M.on_attach(client, bufnr)
  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
  end

  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
  map("n", "gr", vim.lsp.buf.references, "References")
  map("n", "gi", vim.lsp.buf.implementation, "Implementation")
  map("n", "K", vim.lsp.buf.hover, "Hover")
  map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
  map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
  -- map("n", "[d", vim.diagnostic.goto_prev, "Prev diagnostic")
  -- map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
  map("n", "<leader>d", vim.diagnostic.open_float, "Line diagnostics")

  -- Inlay hints
  if vim.lsp.inlay_hint then
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end
end

return M
