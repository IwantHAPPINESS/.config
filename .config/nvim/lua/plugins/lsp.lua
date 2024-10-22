local lspconfig = require('lspconfig')
-- local cmp = require('cmp')
vim.lsp.inlay_hint.enable(true)

-- Конфигурация rust-analyzer с поддержкой автодополнений
-- lspconfig.rust_analyzer.setup({
--     capabilities = require('cmp_nvim_lsp').default_capabilities(),
--     settings = {
--         ["rust-analyzer"] = {
--             cargo = {
--                 allFeatures = true
--             },
--             checkOnSave = {
--                 command = "clippy"
--             }
--         }
--     }
-- })

