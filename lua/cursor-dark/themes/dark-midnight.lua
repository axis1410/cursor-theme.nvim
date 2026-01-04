local M = {}

local palette = {
  background = "#1E2127",
  foreground = "#EBEEF4",
  cursorColor = "#A6BF91",
  selectionBackground = "#21252B",

  brightBlack = "#535D71",
  brightBlue = "#85A4C3",
  brightCyan = "#93BDBD",
  brightGreen = "#A6BF91",
  brightPurple = "#B692B0",
  brightRed = "#C06771",
  brightWhite = "#EBEEF4",
  brightYellow = "#EACC90",

  darkBlack = "#21252B",
  darkBlue = "#313C47",
  darkGreen = "#374030",
  darkRed = "#4F2A2F",
  darkYellow = "#4A402E",

  black = "#30353F",
  blue = "#85A4C3",
  cyan = "#8CC1D1",
  green = "#A6BF91",
  purple = "#82819F",
  red = "#C06771",
  white = "#E4E8F0",
  yellow = "#EACC90",
}

function M.highlights(opts)
  opts = opts or {}

  local highlights = {
    Normal = { fg = palette.foreground, bg = palette.background },
    NormalNC = { fg = palette.foreground, bg = palette.background },

    Cursor = { fg = palette.foreground, bg = palette.cursorColor, style = "nocombine" },
    CursorLine = { bg = palette.selectionBackground },
    CursorColumn = { bg = palette.selectionBackground },
    CursorLineNr = { fg = palette.brightBlack, bg = palette.selectionBackground },

    LineNr = { fg = palette.brightBlack },
    SignColumn = { fg = palette.brightBlack, bg = palette.background },
    WinSeparator = { fg = palette.black, bg = "NONE" },
    VertSplit = { fg = palette.black, bg = "NONE" },

    StatusLine = { fg = palette.foreground, bg = palette.black },
    StatusLineNC = { fg = palette.brightBlack, bg = palette.background },
    WinBar = { fg = palette.foreground, bg = palette.darkBlack },
    WinBarNC = { fg = palette.brightBlack, bg = palette.darkBlack },

    TabLine = { fg = palette.brightBlack, bg = palette.background },
    TabLineFill = { fg = palette.brightBlack, bg = palette.background },
    TabLineSel = { fg = palette.foreground, bg = palette.black, style = "bold" },

    Pmenu = { fg = palette.brightWhite, bg = palette.black },
    PmenuSel = { fg = palette.black, bg = palette.blue },
    PmenuThumb = { fg = palette.black, bg = palette.blue },

    Title = { fg = palette.blue, style = "bold" },
    Visual = { bg = palette.darkBlue },
    MatchParen = { fg = palette.background, bg = palette.yellow, style = "bold" },

    NormalFloat = { fg = palette.foreground, bg = palette.background },
    FloatBorder = { fg = palette.brightBlack, bg = palette.background },

    Search = { fg = palette.yellow, bg = palette.darkYellow },
    CurSearch = { fg = palette.background, bg = palette.yellow },

    DiffAdd = { bg = palette.darkGreen },
    DiffChange = { bg = palette.darkYellow },
    DiffDelete = { bg = palette.darkRed },
    DiffText = { bg = palette.darkBlue },

    GitSignsAdd = { fg = palette.green, bg = "NONE" },
    GitSignsChange = { fg = palette.yellow, bg = "NONE" },
    GitSignsDelete = { fg = palette.red, bg = "NONE" },

    Comment = { fg = palette.brightBlack, style = "italic" },
    String = { fg = palette.green },
    Number = { fg = palette.purple },
    Boolean = { fg = palette.yellow },
    Keyword = { fg = palette.purple },
    Function = { fg = palette.blue },
    Identifier = { fg = palette.red },
    Statement = { fg = palette.purple },
    Operator = { fg = palette.blue },
    Type = { fg = palette.brightBlue },
    PreProc = { fg = palette.brightPurple },
    Constant = { fg = palette.brightYellow },
    Todo = { fg = palette.yellow, style = "bold" },

    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.cyan },
    DiagnosticUnderlineError = { style = "undercurl", sp = palette.red },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = palette.blue },
    DiagnosticUnderlineHint = { style = "undercurl", sp = palette.cyan },

    ["@variable"] = { fg = palette.white },
    ["@constant"] = { fg = palette.yellow },
    ["@string"] = { fg = palette.green },
    ["@number"] = { fg = palette.purple },
    ["@type"] = { fg = palette.brightBlue },
    ["@function"] = { fg = palette.blue },
    ["@keyword"] = { fg = palette.purple },
    ["@comment"] = { fg = palette.brightBlack, style = "italic" },

    ["@lsp.type.class"] = { fg = palette.brightBlue },
    ["@lsp.type.function"] = { fg = palette.blue },
    ["@lsp.type.keyword"] = { fg = palette.purple },
    ["@lsp.type.string"] = { fg = palette.green },
    ["@lsp.type.property"] = { fg = palette.red },
  }

  if opts.transparent then
    highlights.Normal.bg = "NONE"
    highlights.NormalNC.bg = "NONE"
    highlights.NormalFloat.bg = "NONE"
    highlights.FloatBorder.bg = "NONE"
    highlights.StatusLine.bg = "NONE"
    highlights.StatusLineNC.bg = "NONE"
    highlights.WinBar.bg = "NONE"
    highlights.WinBarNC.bg = "NONE"
    highlights.TabLine.bg = "NONE"
    highlights.TabLineFill.bg = "NONE"
    highlights.Pmenu.bg = "NONE"
  end

  if opts.dashboard then
    highlights.DashboardHeader = { fg = palette.blue, style = "bold" }
    highlights.DashboardIcon = { fg = palette.blue, style = "bold" }
    highlights.DashboardShortCut = { fg = palette.blue, style = "bold" }
    highlights.DashboardDesc = { fg = palette.blue, style = "bold" }
    highlights.DashboardKey = { fg = palette.blue, style = "bold" }
    highlights.DashboardFooter = { fg = palette.brightBlack, bg = "NONE" }
  end

  return highlights
end

return M
