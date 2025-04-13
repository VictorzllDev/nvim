-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

-- lsps
local servers = {
  "biome",
  "cssls",
  "gopls",
  "html",
  "prismals",
  "rust_analyzer",
  "ruff",
  "tailwindcss",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- Função para organizar imports usando o TypeScript Language Server
local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }

  local ok, err = pcall(function()
    vim.lsp.buf_request(0, "workspace/executeCommand", params)
  end)

  if not ok then
    vim.notify("Error: " .. tostring(err), vim.log.levels.ERROR)
  end
end

-- TypeScript/JavaScript Language Server: Suporte para TypeScript e JavaScript, com recursos como completamento de código e verificação de erros.
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = false,
    },
  },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organizar Imports",
    },
  },
}
