local M = {}
local hi = vim.api.nvim_set_hl
local config = require('everblush.config')

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(0, group, properties)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi(0, 'NvimTreeNormal', { bg = colors.contrast })
    hi(0, 'NvimTreeNormalNC', { bg = colors.contrast })
    hi(0, 'NvimTreeEndOfBuffer', { bg = colors.contrast, fg = colors.contrast })
    hi(0, 'NvimTreeEndOfBufferNC', { bg = colors.contrast, fg = colors.contrast })
    hi(0, 'NvimTreeVertSplit', { fg = colors.background, bg = colors.background })
  end
  local override = opts.override or {}
  for group, properties in pairs(override) do
    hi(0, group, properties)
  end
end

return M
