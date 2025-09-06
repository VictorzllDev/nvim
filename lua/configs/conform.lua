return {
	formatters_by_ft = {
		javascript = { "biome" }, -- Biome para JS
		javascriptreact = { "biome" }, -- Biome para JSX
		json = { "biome" }, -- Biome para JSON
		typescript = { "biome" }, -- Biome para TS
		typescriptreact = { "biome" }, -- Biome para TSX
	},

	format_on_save = {
		timeout_ms = 1500, -- Reduced timeout for slow hardware (1.5 seconds)
		lsp_fallback = true, -- Use LSP formatter when no external formatter is configured
		async = false, -- Synchronous formatting (async not supported with format_on_save)
	},
}
