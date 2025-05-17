local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font {
    family = 'Maple Mono NF CN',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.font_size = 17
config.window_frame = {
    font = wezterm.font({ family = 'Maple Mono NF CN'}),
    font_size = 14,
}

-- Theme
config.color_scheme = 'OneDark (base16)'

-- Window - Title Bar
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'

-- Tab

-- Key Binding
config.keys = {
    { key = 'k',          mods = 'CMD',        action = wezterm.action.ClearScrollback 'ScrollbackAndViewport' },
    { key = 'd',          mods = 'CMD',        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'd',          mods = 'CMD|SHIFT',  action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = "[",          mods = "CMD",        action = wezterm.action { ActivatePaneDirection="Next" } },
    { key = "]",          mods = "CMD",        action = wezterm.action { ActivatePaneDirection="Prev" } },
    { key = 'LeftArrow',  mods = 'OPT',        action = wezterm.action { SendString = "\x1bb" } },
    { key = 'RightArrow', mods = 'OPT',        action = wezterm.action { SendString = "\x1bf" } },
    { key = 'LeftArrow',  mods = 'SHIFT|CTRL', action = wezterm.action.MoveTabRelative(-1) },
    { key = 'RightArrow', mods = 'SHIFT|CTRL', action = wezterm.action.MoveTabRelative(1) },
}

-- Scroll
-- config.scrollback_lines = 3500 -- default 3500

-- Plugin
-- Updating all plugin - Run command: `wezterm.plugin.update_all()`

-- local a_plugin = wezterm.plugin.require 'https://github.com/owner/repo'
-- myPluginConfig = { enable = true, location = 'right' }
-- a_plugin.apply_to_config(config, myPluginConfig)

return config
