local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

lspconfig.biome.setup {}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = false,
    }
  },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports",
    }
  }
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.ruff_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'javascriptreact', 'typescriptreact', 'css' },
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          "clsx\\(([^)]*)\\)",
          "classnames\\(([^)]*)\\)",
          "style\\(['\"]([^'\"]*)['\"]\\)",
        },
      },
    },
  },
}

lspconfig.prismals.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.ccls.setup {}
