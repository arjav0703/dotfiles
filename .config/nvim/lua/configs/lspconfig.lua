require("nvchad.configs.lspconfig").defaults()

local status, nvim_lsp = pcall(require, "lspconfig")
local protocol = require "vim.lsp.protocol"

-- local on_attach = function(client, bufnr)
--   -- format on save
--   if client.server_capabilities.documentFormattingProvider then
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = vim.api.nvim_create_augroup("Format", { clear = true }),
--       buffer = bufnr,
--       callback = function()
--         vim.lsp.buf.formatting_seq_sync()
--       end,
--     })
--   end
-- end
--
-- TypeScript
nvim_lsp.tsserver.setup {
  -- on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}

local servers = { "html", "cssls", "tsserver", "rust_analyzer" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
