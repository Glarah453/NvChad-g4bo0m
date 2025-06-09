require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "htmx", "cssls", "pyre", "ts_ls", "ruby_lsp", "angularls", "lsp_ai" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
