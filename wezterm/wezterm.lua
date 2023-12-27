local wezterm = require("wezterm")

local scoop_path = os.getenv("SCOOP")

return {
	color_scheme = "Gruvbox dark, hard (base16)",
	font_dirs = { "fonts" },
	font_size = 10.5,
	font = wezterm.font_with_fallback({
		{ family = "Monaspace Krypton" },
		{ family = "Symbols NFM" },
	}),
	line_height = 1.0,
	cell_width = 1.0,
	cursor_thickness = "100%",
	default_cursor_style = "SteadyUnderline",
	default_prog = { "d:\\Apps\\.scoop\\apps\\git\\current\\bin\\bash" },

	-- Fix CTRL + SPACE issue for Neovim/Git Bash (https://github.com/wez/wezterm/issues/405)
	keys = {
		{
			key = " ",
			mods = "CTRL",
			action = wezterm.action.SendKey({
				key = " ",
				mods = "CTRL",
			}),
		},
	},
}
