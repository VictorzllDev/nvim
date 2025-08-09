return {
	formatters_by_ft = {
		lua = { "lua-language-server" }, -- Formatação via LSP
		go = { "gopls" }, -- Formatação via LSP
		css = { "biome" }, -- Biome para CSS
		html = { "html-lsp" }, -- Formatação via LSP
		javascript = { "biome" }, -- Biome para JS
		javascriptreact = { "biome" }, -- Biome para JSX
		json = { "biome" }, -- Biome para JSON
		typescript = { "biome" }, -- Biome para TS
		typescriptreact = { "biome" }, -- Biome para TSX
		yaml = { "yaml-language-server" }, -- Formatação via LSP
		prisma = { "prisma-language-server" }, -- Formatação via LSP
	},

	format_on_save = {
		timeout_ms = 1500, -- Reduced timeout for slow hardware (1.5 seconds)
		lsp_fallback = false, -- Disabled to prevent queuing
		async = true, -- Asynchronous formatting to prevent UI freezing
	},
}
