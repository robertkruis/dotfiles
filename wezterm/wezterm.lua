local wezterm = require("wezterm")

return {
	default_prog = { "powershell.exe", "-NoLogo" },
	color_scheme = "Gruvbox dark, hard (base16)",
	font_dirs = { "fonts" },
	font_size = 11.25,
	font = wezterm.font_with_fallback({
		-- { family = "Monaspace Krypton" },
		{ family = "Maple Mono" },
		{ family = "Symbols NFM" },
	}),
	line_height = 1.0,
	cell_width = 1.0,
	cursor_thickness = "100%",
	default_cursor_style = "SteadyUnderline",

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
