local wezterm = require("wezterm")

local color_scheme_dark = "OneNord"
local color_scheme_light = "OneNord Light"

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

-- FIXME: not working when harfbuzz_features are specified on the font level (see: https://github.com/wez/wezterm/issues/5420)
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
	default_prog = { "pwsh", "-NoLogo" },
	color_scheme = color_scheme_dark,
	font_dirs = { "fonts" },
	font_size = 10.75,
	font = wezterm.font_with_fallback({
		{
			family = "JuliaMono",
			weight = "Light",
			harfbuzz_features = { "calt=0", "zero", "ss01", "ss10", "ss16" },
		},
		{ family = "Symbols Nerd Font Mono" },
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
	use_fancy_tab_bar = false,
}
