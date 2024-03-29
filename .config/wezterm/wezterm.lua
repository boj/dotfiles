local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'ayu_light'
config.colors = {
  cursor_bg = 'black',
  cursor_border = 'gray',
}
--config.font = wezterm.font 'Iosevka Slab'
config.enable_tab_bar = false
config.font_size = 10.5
-- config.text_background_opacity = 0.95
-- config.window_background_opacity = 0.95
config.window_padding = {
  left = 30,
  right = 30,
  top = 20,
  bottom = 20,
}

config.enable_wayland = false

return config
