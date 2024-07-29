local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").biome
    },
    typescript = {
      require("formatter.filetypes.typescript").biome
    },
    css = {
      require("formatter.filetypes.css").prettier
    },
    javascriptreact = {
      require("formatter.filetypes.javascript").biome
    },
    typescriptreact = {
      require("formatter.filetypes.typescript").biome
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
