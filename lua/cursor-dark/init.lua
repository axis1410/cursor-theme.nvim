local M = {}

local defaults = {
  style = "dark",
  transparent = false,
  dashboard = false,
}

local function normalize_hl(spec)
  if type(spec) ~= "table" then
    return spec
  end

  local out = vim.tbl_extend("force", {}, spec)

  local function normalize_color(v)
    if type(v) ~= "string" then
      return v
    end
    if v == "none" or v == "None" then
      return "NONE"
    end
    return v
  end

  out.fg = normalize_color(out.fg)
  out.bg = normalize_color(out.bg)
  out.sp = normalize_color(out.sp)

  if out.style ~= nil then
    local style = out.style
    out.style = nil

    if type(style) == "string" then
      for token in string.gmatch(style, "[^,%s]+") do
        if token == "bold" then
          out.bold = true
        elseif token == "italic" then
          out.italic = true
        elseif token == "underline" then
          out.underline = true
        elseif token == "undercurl" then
          out.undercurl = true
        elseif token == "strikethrough" then
          out.strikethrough = true
        elseif token == "nocombine" then
          out.nocombine = true
        end
      end
    end
  end

  return out
end

local function apply(highlights)
  vim.o.termguicolors = true
  vim.o.background = "dark"

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, normalize_hl(spec))
  end
end

function M.load(style)
  local theme = require("cursor-dark.themes." .. style)
  apply(theme.highlights(M.options or defaults))
  vim.g.colors_name = style == "dark" and "cursor-dark" or "cursor-dark-midnight"
end

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", defaults, opts or {})
  M.load(M.options.style)
end

return M