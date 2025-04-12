local plugins = {
  {
    "Exafunction/codeium.vim",
    event = 'BufEnter',
    config = function()
      return require "custom.configs.codeium"
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "biome",
        "css-lsp",
        "gopls",
        "html-lsp",
        "lua-language-server",
        "prisma-language-server",
        "prettier",
        "ruff-lsp",
        "rust-analyzer",
        "tailwindcss-language-server",
        "typescript-language-server",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "custom.configs.treesitter"
    end,
  },

}
return plugins
