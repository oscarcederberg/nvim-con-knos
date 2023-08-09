local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  'clangd',
  'lua_ls',
  'marksman',
  'rust_analyzer'
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
