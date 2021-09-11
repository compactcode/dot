local lsp = require('lspconfig')

lsp.rust_analyzer.setup {}
lsp.solargraph.setup {}

require("which-key").register({
  ["<leader>"] = {
    l = {
      name = "+lsp",
      r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
      h = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Show hover" },
      s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Show signature" },
    },
  },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = "single"
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = "single"
  }
)
