local wezterm = require("wezterm")

return {
	-- Window dimensions
	initial_cols = 130,
	initial_rows = 35,

	-- Window opacity
	window_background_opacity = 0.95,

	-- Font settings
	font = wezterm.font("Monaspace Neon"),
	font_size = 14,
	harfbuzz_features = {
		"calt", -- Enable "texture healing"
		"cv31", -- 6-pointed asterisk
	},

	color_scheme = "Catppuccin Mocha",

	hide_tab_bar_if_only_one_tab = true,
}
