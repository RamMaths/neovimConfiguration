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
        "bash", "markdown", "markdown_inline", "yaml", "dockerfile"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    ft = { "markdown" },
    opts = {
      -- Headings
      heading = {
        enabled = true,
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
      },
      -- Code blocks
      code = {
        enabled = true,
        sign = true,
        style = "full",
        left_pad = 2,
        right_pad = 2,
        width = "block",
        border = "thin",
      },
      -- Bullet lists
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
      },
      -- Checkboxes
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
      -- Quotes
      quote = {
        enabled = true,
        icon = "▋",
      },
      -- Tables
      pipe_table = {
        enabled = true,
        style = "full",
      },
      -- Callouts (GitHub style)
      callout = {
        note = { rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
        tip = { rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
        important = { rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
        warning = { rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
        caution = { rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
      },
    },
    config = function(_, opts)
      require("render-markdown").setup(opts)
    end,
  },
}
