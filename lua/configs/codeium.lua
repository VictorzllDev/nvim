-- General keymaps
local v = vim
local map = v.keymap.set

-- Codeium configuration
v.g.codeium_disable_bindings = 1 -- Disable default bindings

-- Codeium keymaps table for better organization
local codeium_maps = {
  -- Accept suggestion
  {
    "i",       -- Insert mode
    "<M-Tab>", -- Alt+Tab
    function()
      return v.fn["codeium#Accept"]()
    end,
    { expr = true, silent = true },
  },

  -- Cycle forward through completions
  {
    "i",
    "<M-]>", -- Alt+]
    function()
      return v.fn["codeium#CycleCompletions"](1)
    end,
    { expr = true, silent = true },
  },

  -- Cycle backward through completions
  {
    "i",
    "<M-[>", -- Alt+[
    function()
      return v.fn["codeium#CycleCompletions"](-1)
    end,
    { expr = true, silent = true },
  },

  -- Clear current suggestion
  {
    "i",
    "<C-x>", -- Ctrl+x
    function()
      return v.fn["codeium#Clear"]()
    end,
    { expr = true, silent = true },
  },

  -- Manually trigger completion
  {
    "i",
    "<M-Bslash>", -- Alt+\
    function()
      return v.fn["codeium#Complete"]()
    end,
    { expr = true, silent = true },
  },

  -- Accept next word of suggestion
  {
    "i",
    "<M-l>", -- Alt+l
    function()
      return v.fn["codeium#AcceptNextWord"]()
    end,
    { expr = true, silent = true },
  },
}

-- Apply all Codeium keymaps
for _, mapping in ipairs(codeium_maps) do
  map(mapping[1], mapping[2], mapping[3], mapping[4])
end
