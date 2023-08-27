local wezterm = require("wezterm")

local scoop_path = os.getenv("SCOOP")

return {
	default_prog = {
		string.format("%s\\apps\\git\\current\\bin\\bash.exe", scoop_path),
		"--login",
		"-i",
		"-l",
	},
	color_scheme = "Gruvbox dark, hard (base16)",
	font_dirs = { "fonts" },
	font_size = 10.5,
	font = wezterm.font_with_fallback({
		{ family = "CommitMono" },
		{ family = "Symbols NFM" },
	}),
	line_height = 1.0,
	cell_width = 1.0,
	cursor_thickness = "100%",
	default_cursor_style = "SteadyUnderline",
}
