return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      require "configs.treesitter"
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      require "configs.mason"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
