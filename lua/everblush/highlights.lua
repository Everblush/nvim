local M = {}
local hi = vim.highlight.create
local config = require('everblush.config')

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties, false)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi('NvimTreeNormal', { guibg = colors.contrast })
    hi('NvimTreeNormalNC', { guibg = colors.contrast })
    hi('NvimTreeEndOfBuffer', { guibg = colors.contrast, guifg = colors.contrast })
    hi('NvimTreeEndOfBufferNC', { guibg = colors.contrast, guifg = colors.contrast })
    hi('NvimTreeVertSplit', { guifg = colors.background, guibg = colors.background })
  end
end

return M
