-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "marksman"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
--clangd
lspconfig.clangd.setup({
  name = 'clangd',
  cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
  initialization_options = {
    fallback_flags = { '-std=c++17' },
  },
})
-- -- pyright
lspconfig.pyright.setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

