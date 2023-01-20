local M = {}
local core = require('everblush.core')
local highlights = require('everblush.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {}
  end
  local colors = core.get_colors()
  vim.opt.termguicolors = true
  vim.g.colors_name = "everblush"
  highlights.highlight_all(colors, opts)
end

return M
