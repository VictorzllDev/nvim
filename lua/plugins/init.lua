return {
	{
		"williamboman/mason.nvim",
		opts = require("configs.mason"),
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("configs.treesitter"),
	},
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			require("configs.codeium")
		end,
	},
	{
		"vyfor/cord.nvim",
		build = ":Cord update",
		event = "VeryLazy",
		opts = require("configs.cord"),
	},
}
