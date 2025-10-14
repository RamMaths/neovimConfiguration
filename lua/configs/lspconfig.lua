require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "bashls", "dockerls", "markdown_oxide", "terraformls" }
vim.lsp.enable(servers)

-- Configure Rust (rust-analyzer)
vim.lsp.config.rust_analyzer = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "rust-project.json" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
        buildScripts = {
          enable = true,
        },
      },
      checkOnSave = {
        command = "clippy",
      },
      procMacro = {
        enable = true,
      },
      diagnostics = {
        enable = true,
        experimental = {
          enable = true,
        },
      },
    }
  }
}

-- Configure Python (jedi_language_server)
vim.lsp.config.jedi_language_server = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/jedi-language-server" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
  settings = {
    jedi = {
      enable = true,
      startupMessage = false,
      completion = {
        disableSnippets = false,
      },
    }
  }
}

-- Configure TypeScript/JavaScript
vim.lsp.config.ts_ls = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  }
}

-- Configure Angular
vim.lsp.config.angularls = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/ngserver", "--stdio", "--tsProbeLocations", vim.fn.stdpath("data") .. "/mason/packages/angular-language-server/node_modules", "--ngProbeLocations", vim.fn.stdpath("data") .. "/mason/packages/angular-language-server/node_modules" },
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  root_markers = { "angular.json", "project.json" },
}

-- Configure elixirls
vim.lsp.config.elixirls = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/elixir-ls" },
  filetypes = { "elixir", "eelixir", "heex", "surface" },
  root_markers = { "mix.exs", ".git" },
  settings = {
    elixirLS = {
      dialyzerEnabled = false,
      fetchDeps = true,
      enableTestLenses = false,
      suggestSpecs = true,
      mixEnv = "dev",
      projectDir = ".",
    }
  },
  on_attach = function(client, bufnr)
    -- Disable formatting if you prefer to use mix format via conform.nvim
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
}

-- Enable all configured language servers
vim.lsp.enable({ "rust_analyzer", "jedi_language_server", "ts_ls", "angularls", "elixirls" })

-- read :h vim.lsp.config for changing options of lsp servers 
