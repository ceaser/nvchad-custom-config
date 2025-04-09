---@type ChadrcConfig
local M = {}

-- -- Path to overriding theme and highlights files
-- local highlights = require "custom.highlights"

M.ui = {
  theme = 'catppuccin',
  -- theme = "onedark",
  -- theme_toggle = { "onedark", "one_light" },

  -- hl_override = highlights.override,
  -- hl_add = highlights.add,
}

M.plugins = 'custom.plugins'

M.mappings = require "custom.mappings"

-- let g:augment_workspace_folders = ['/path/to/project', '~/another-project']
-- vim.g.augment_workspace_folders = {
--   '/path/to/project',
--   vim.fn.expand('~/another-project')
-- }

return M
