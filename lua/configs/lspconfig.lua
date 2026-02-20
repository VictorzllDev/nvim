-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require("nvchad.configs.lspconfig")

local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

-- lsps
local servers = {
	"biome", -- JavaScript/TypeScript formatter + linter
	"cssls", -- CSS language server
	"gopls", -- Go language server
	"html", -- HTML language server
	"intelephense", -- PHP language server
	"marksman", -- Markdown language server
	"prismals", -- Prisma ORM language server
	"lua_ls", -- Lua language server
	"tailwindcss", -- Tailwind CSS language server
	"ts_ls", -- TypeScript/JavaScript language server
	"yamlls", -- YAML language server
}

-- lsps with default config
for _, lsp in ipairs(servers) do
	vim.lsp.config[lsp] = {
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	}
	vim.lsp.enable(lsp)
end
