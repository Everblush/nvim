local util = require('everblush.util')

local M = {}

local config = {
	override = {},
	transparent_background = false,
    nvim_tree = {
        contrast = false,
    },
}

function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend('force', config, opts)
end

function M.colorscheme()
	if vim.g.colors_name then
		vim.cmd('hi clear')
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = 'everblush'

	local theme = require('everblush.theme').get(config)

	-- Set theme highlights
	for group, color in pairs(theme) do
		-- Skip highlight group if user overrides
		if config.override[group] == nil then
			util.highlight(group, color)
		end
	end

	-- Set user highlights
	for group, color in pairs(config.override) do
		util.highlight(group, color)
	end
end

return M
