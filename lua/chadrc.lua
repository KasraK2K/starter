-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
  nvdash = {
    load_on_startup = false, -- NvimTree should open with the dashboard
  },

  tabufline = {
    enabled = false,
  },

  statusline = {
    theme = "minimal", -- default, vscode, vscode_colored or minimal
    separator_style = "round", -- default, round, block or arrow
  },
}

M.plugins = {
  options = {
    nvimtree = {
      open_on_setup = true,
      open_on_tab = true,
      open_on_setup_file = true,
    },
  },
}

M.base46 = {
  theme = "catppuccin",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
