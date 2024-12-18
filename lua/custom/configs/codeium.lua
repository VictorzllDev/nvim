vim.g.codeium_disable_bindings = 1

vim.keymap.set('i', '<M-Tab>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<M-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-Bslash>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true })
vim.keymap.set('i', '<S-Tab>', function() return vim.fn['codeium#AcceptNextWord']() end, { expr = true, silent = true })
