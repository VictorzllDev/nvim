return {
	ensure_installed = {
		-- Web Development
		"css", -- CSS syntax highlighting
		"html", -- HTML syntax and nesting
		"javascript", -- JavaScript syntax
		"tsx", -- TypeScript with JSX support
		"typescript", -- TypeScript syntax
		"php", -- PHP syntax

		-- Backend Languages
		"go", -- Go syntax and indentation
		"lua", -- Lua syntax (essential for Neovim config)

		-- Data Formats
		"json", -- JSON syntax and validation
		"json5", -- JSON5 (extended JSON) support
		"yaml", -- YAML syntax and validation

		-- Database
		"prisma", -- Prisma ORM syntax highlighting

		-- Vim Ecosystem
		"vim", -- Vimscript highlighting
		"vimdoc", -- Vim help file support
	},

	highlight = {
		enable = true, -- Core syntax highlighting
		additional_vim_regex_highlighting = false, -- Disable slow regex fallback
	},

	-- Performance Optimizations
	indent = {
		enable = false, -- Disable indentation (heavy on slow machines)
	},
	incremental_selection = {
		enable = false, -- Disable node selection (saves memory)
	},
	autotag = {
		enable = false, -- Disable auto-tagging (reduces CPU usage)
	},
	context_commentstring = {
		enable = false, -- Disable smart comments (minor performance gain)
	},
}
