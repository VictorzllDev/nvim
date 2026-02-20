require("nvchad.mappings")

-- Atalhos gerais
local map = vim.keymap.set

map("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true, desc = "Code Action" })
map("n", "K", "<cmd>lua vim.lsp.buf.hover({ border = 'rounded' })<CR>", { silent = true, desc = "Hover Documentation" })
