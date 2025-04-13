require "nvchad.mappings"

-- Atalhos gerais
local map = vim.keymap.set

-- Configuração do Codeium
vim.g.codeium_disable_bindings = 1

-- Keymaps do Codeium usando uma tabela para maior clareza
local codeium_maps = {
  { "i", "<M-Tab>",     function() return vim.fn['codeium#Accept']() end,          { expr = true, silent = true } },
  { "i", "<M-]>",       function() return vim.fn['codeium#CycleCompletions'](1) end,  { expr = true, silent = true } },
  { "i", "<M-[>",       function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true } },
  { "i", "<C-x>",       function() return vim.fn['codeium#Clear']() end,           { expr = true, silent = true } },
  { "i", "<M-Bslash>",  function() return vim.fn['codeium#Complete']() end,        { expr = true, silent = true } },
  { "i", "<D-l>",     function() return vim.fn['codeium#AcceptNextWord']() end,  { expr = true, silent = true } },
}

-- Aplicar todos os keymaps do Codeium
for _, mapping in ipairs(codeium_maps) do
  map(mapping[1], mapping[2], mapping[3], mapping[4])
end
