local options = {
  formatters_by_ft = {
    css = { "prettier" },
    go = { "gofmt" },
    html = { "prettier" },
    javascript = { "biome" },
    javascriptreact = { "biome" },
    json = { "biome" },
    lua = { "stylua" },
    python = { "ruff" },
    rust = { "rustfmt" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    yaml = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
