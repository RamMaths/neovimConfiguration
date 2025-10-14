local options = {
  formatters_by_ft = {
    -- Lua
    lua = { "stylua" },

    -- Rust
    rust = { "rustfmt" },

    -- Python
    python = { "isort", "black" },

    -- JavaScript/TypeScript
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },

    -- Web
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },

    -- Elixir
    elixir = { "mix" },
  },

  formatters = {
    -- Custom mix formatter for Elixir
    mix = {
      command = "mix",
      args = { "format", "-" },
      stdin = true,
    },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
