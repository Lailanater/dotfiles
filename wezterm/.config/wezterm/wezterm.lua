local wezterm = require("wezterm")

return {
	-- Window dimensions
	initial_cols = 130,
	initial_rows = 35,

	-- Window opacity
	window_background_opacity = 0.95,

	-- Font settings
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
	font_size = 14,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	color_scheme = "Catppuccin Mocha",
}
