-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Kanagawa (Gogh)'
config.color_scheme = 'ayu_light'
-- config.color_scheme = 'GruvboxDarkHard'
--config.color_schemes = {
--    ['GruvboxDarkHard'] = {
--        background = '#1D2122',
--    },
--}
--config.font = wezterm.font 'Iosevka Slab'
config.font_size = 10.5
config.enable_tab_bar = false
-- config.window_background_opacity = 0.95
-- config.text_background_opacity = 0.95

-- and finally, return the configuration to wezterm
return config
