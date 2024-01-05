-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.keys = {
  {
    key = 'LeftArrow',
    mods = 'ALT',
    action = wezterm.action.SendKey {
      key = 'b',
      mods = 'ALT',
    },
  },
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = wezterm.action.SendKey {
      key = 'f',
      mods = 'ALT',
    },
  }
}

config.window_padding = {
  left = 4,
  right = 4,
  top = 4,
  bottom = 4,
}

config.initial_cols = 120
config.initial_rows = 30

config.native_macos_fullscreen_mode = true

return config
