local core = require('everblush.core')
local colors = core.get_colors()

local night = {}

night.normal = {
  a = { bg = colors.color2, fg = colors.background },
  b = { bg = colors.background, fg = colors.color7 },
  c = { bg = colors.background, fg = colors.foreground },
}

night.insert = {
  a = { bg = colors.color10, fg = colors.background },
  b = { bg = colors.background, fg = colors.color4 },
}

night.command = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.background, fg = colors.color5 },
}

night.visual = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.background, fg = colors.color6 },
}

night.replace = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.background, fg = colors.color11 },
}

night.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
  c = { bg = colors.background, fg = colors.foreground },
}

return night
