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

-- Biome Language Server: LSP para o ambiente Biome, oferecendo suporte para desenvolvimento em TypeScript/JavaScript.
lspconfig.biome.setup {}

-- CSS Language Server: Suporte para CSS, SCSS e Less, com recursos como autocompletar e linting.
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- HTML Language Server: Suporte para HTML, incluindo validação de sintaxe, formatação e autocompletar.
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Prisma Language Server: Oferece autocompletar e verificação de tipos para arquivos de esquema Prisma.
lspconfig.prismals.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Rust Analyzer: LSP para Rust, com recursos como completamento de código, diagnósticos e dicas de código (inlay hints).
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- Ruff LSP: Um linter rápido para Python, com foco em desempenho e conformidade com o PEP8.
lspconfig.ruff.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Tailwind CSS Language Server: Suporte ao Tailwind CSS, incluindo autocompletar para classes CSS.
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

-- TypeScript/JavaScript Language Server: Suporte para TypeScript e JavaScript, com recursos como completamento de código e verificação de erros.
lspconfig.ts_ls.setup {
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
      description = "Organizar Imports",
    }
  }
}

