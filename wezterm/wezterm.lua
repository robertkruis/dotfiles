local wezterm = require("wezterm")

local color_scheme_dark = "rose-pine-moon"
local color_scheme_light = "rose-pine-dawn"

wezterm.on("toggle-theme", function(window, _)
	local overrides = window:get_config_overrides() or {}
	if not overrides.color_scheme then
		overrides.color_scheme = color_scheme_light
	else
		if overrides.color_scheme == color_scheme_dark then
			overrides.color_scheme = color_scheme_light
		else
			overrides.color_scheme = color_scheme_dark
		end
	end

	window:set_config_overrides(overrides)
end)

wezterm.on("toggle-ligatures", function(window, _)
	local overrides = window:get_config_overrides() or {}
	if not overrides.harfbuzz_features then
		overrides.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
	else
		overrides.harfbuzz_features = nil
	end

	window:set_config_overrides(overrides)
end)

return {
	default_prog = { "powershell.exe", "-NoLogo" },
	color_scheme = color_scheme_dark,
	font_dirs = { "fonts" },
	font_size = 11.5,
	font = wezterm.font_with_fallback({
		{ family = "Intel One Mono" },
		{ family = "Symbols NFM" },
	}),
	line_height = 1.0,
	cell_width = 1.0,
	cursor_thickness = "100%",
	default_cursor_style = "SteadyUnderline",
	freetype_load_target = "Light",
	freetype_render_target = "HorizontalLcd",

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
		{
			key = "t",
			mods = "ALT",
			action = wezterm.action.EmitEvent("toggle-theme"),
		},
		{
			key = "l",
			mods = "ALT",
			action = wezterm.action.EmitEvent("toggle-ligatures"),
		},
	},
	window_padding = {
		left = 0,
		top = 0,
		right = 0,
		bottom = 0,
	},
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
}
