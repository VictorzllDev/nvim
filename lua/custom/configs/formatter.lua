local M = {
  filetype = {
    html = {
      require("formatter.filetypes.html").prettier
    },
    css = {
      require("formatter.filetypes.css").prettier
    },
    javascript = {
      require("formatter.filetypes.javascript").biome
    },
    typescript = {
      require("formatter.filetypes.typescript").biome
    },
    javascriptreact = {
      require("formatter.filetypes.javascript").biome
    },
    typescriptreact = {
      require("formatter.filetypes.typescript").biome
    },
    json = {
      require("formatter.filetypes.json").biome
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt
    },
    go = {
      require("formatter.filetypes.go").gofmt
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
