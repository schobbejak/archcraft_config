-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "python-lsp-server" }

-- lsps with default config
lspconfig["python-lsp-server"].setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = {"python"}
})

