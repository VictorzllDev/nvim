-- General keymaps
local v = vim
local map = v.keymap.set

-- Codeium configuration
v.g.copilot_no_tab_map = 1 -- Disable Copilot's default Tab mapping

-- Codeium keymaps table for better organization
local codeium_maps = {
	-- Accept suggestion
	{
		"i", -- Insert mode
		"<M-Tab>", -- Alt + Tab
		function()
			return v.fn["copilot#Accept"]("\\<CR>")
		end,
		{ expr = true, silent = true, replace_keycodes = false },
	},

	-- Cycle forward through completions => Alt + ]

	-- Cycle backward through completions => Alt + [

	-- Clear current suggestion => Ctrl + ]

	-- Manually trigger completion Alt + \

	-- Accept next word of suggestion => Alt + Right Arrow

	-- Accept next line of suggestion => Ctrl + Alt + Right Arrow
}

-- Apply all Codeium keymaps
for _, mapping in ipairs(codeium_maps) do
	map(mapping[1], mapping[2], mapping[3], mapping[4])
end
