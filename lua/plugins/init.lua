return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "greggh/claude-code.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("claude-code").setup({
        window = {
          split_ratio = 0.3,
          position = "vertical",
          enter_insert = true
        },
        command = "claude"
      })
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- Core
        "vim", "lua", "vimdoc",

        -- Web Development
        "html", "css", "scss", "javascript", "typescript", "tsx", "json",

        -- Elixir
        "elixir", "heex", "eex",

        -- Rust
        "rust", "toml",

        -- Python
        "python",

        -- Other
        "bash", "markdown", "yaml", "dockerfile"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },
}
