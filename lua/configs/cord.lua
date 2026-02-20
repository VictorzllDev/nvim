return {
	display = {
		theme = "default",
		flavor = "dark",
		view = "full",
	},
	timestamp = {
		enabled = true,
		reset_on_idle = false,
		reset_on_change = false,
		shared = true,
	},
	buttons = {
		{
			label = function(opts)
				return opts.repo_url and "View Repository" or "My GitHub"
			end,
			url = function(opts)
				return opts.repo_url or "https://github.com/VictorzllDev"
			end,
		},
	},
}
