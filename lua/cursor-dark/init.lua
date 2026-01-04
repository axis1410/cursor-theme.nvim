local M = {}

local defaults = {
  style = "dark",
}

local function apply(highlights)
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.load(style)
  local theme = require("cursor-dark.themes." .. style)
  apply(theme.highlights())
  vim.g.colors_name = style == "dark" and "cursor-dark" or "cursor-dark-midnight"
end

function M.setup(opts)
  opts = opts or {}
  M.load(opts.style or defaults.style)
end

return M