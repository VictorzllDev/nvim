require("nvchad.mappings")

-- Atalhos gerais
local map = vim.keymap.set

map("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true, desc = "Code Action" })
