local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "language.lsp.lsp-installer"
require("language.lsp.handlers").setup()
require "language.lsp.null-ls"
