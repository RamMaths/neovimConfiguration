require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jedi_language_server", "ts_ls", "angularls", "bashls", "dockerls", "markdown_oxide", "terraformls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
