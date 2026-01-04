local M = {}

local palette = {
  background = "#1A1A1A",
  foreground = "#D8DEE9",
  cursorColor = "#87C3FF",
  selectionBackground = "#2E2E2E",

  brightBlack = "#505050",
  brightBlue = "#85C1FC",
  brightCyan = "#83D6C5",
  brightGreen = "#A3BE8C",
  brightPurple = "#C582BF",
  brightRed = "#BF616A",
  brightWhite = "#D8DEE9",
  brightYellow = "#EBC88D",

  darkBlack = "#1F1F1F",
  darkBlue = "#1E252B",
  darkGreen = "#272E22",
  darkRed = "#361B1E",
  darkYellow = "#30291C",

  black = "#2A2A2A",
  blue = "#85C1FC",
  cyan = "#88C0D0",
  green = "#A3BE8C",
  purple = "#AA9BF5",
  red = "#BF616A",
  white = "#D8DEE9",
  yellow = "#EFB080",
}

function M.highlights(opts)
  opts = opts or {}

  local highlights = {
    Normal = { fg = palette.foreground, bg = palette.background },
    NormalNC = { fg = palette.foreground, bg = palette.background },

    Cursor = { fg = palette.foreground, bg = palette.cursorColor, style = "nocombine" },
    CursorLine = { bg = palette.darkBlack },
    CursorColumn = { bg = palette.darkBlack },
    CursorLineNr = { fg = palette.purple },

    LineNr = { fg = palette.brightBlack },
    SignColumn = { fg = palette.brightBlack, bg = palette.background },
    WinSeparator = { fg = palette.black, bg = "NONE" },
    VertSplit = { fg = palette.black, bg = "NONE" },

    StatusLine = { fg = palette.foreground, bg = palette.black },
    StatusLineNC = { fg = palette.brightBlack, bg = palette.background },
    StatusLineTerm = { fg = palette.foreground, bg = palette.black },
    StatusLineTermNC = { fg = palette.brightBlack, bg = palette.background },

    WinBar = { fg = palette.foreground, bg = palette.darkBlack },
    WinBarNC = { fg = palette.brightBlack, bg = palette.darkBlack },

    TabLine = { fg = palette.brightBlack, bg = palette.background },
    TabLineFill = { fg = palette.brightBlack, bg = palette.background },
    TabLineSel = { fg = palette.foreground, bg = palette.black, style = "bold" },

    Title = { fg = palette.blue, style = "bold" },
    Visual = { bg = palette.selectionBackground },
    VisualNC = { fg = palette.background, bg = palette.yellow },
    MatchParen = { fg = palette.background, bg = palette.yellow, style = "bold" },

    Pmenu = { fg = palette.white, bg = palette.black },
    PmenuSel = { fg = palette.black, bg = palette.blue },
    PmenuThumb = { fg = palette.black, bg = palette.blue },

    NonText = { fg = palette.brightBlack, bg = "NONE" },
    EndOfBuffer = { fg = palette.background, bg = "NONE" },
    Whitespace = { fg = palette.brightBlack, bg = "NONE" },

    Folded = { fg = palette.brightBlack, bg = "NONE" },
    Directory = { fg = palette.blue, bg = "NONE" },
    ErrorMsg = { fg = palette.red, bg = "NONE" },
    WarningMsg = { fg = palette.yellow, bg = "NONE" },
    MoreMsg = { fg = palette.cyan, bg = "NONE" },
    ModeMsg = { fg = palette.green, bg = "NONE" },
    Question = { fg = palette.cyan, bg = "NONE" },

    Search = { fg = palette.yellow, bg = palette.darkYellow },
    CurSearch = { fg = palette.background, bg = palette.yellow },
    IncSearch = { fg = palette.background, bg = palette.yellow },

    Special = { fg = palette.purple, bg = "NONE" },
    SpecialKey = { fg = palette.brightBlack, bg = "NONE" },
    Conceal = { fg = palette.black, bg = "NONE" },

    SpellBad = { fg = palette.red, style = "underline" },
    SpellCap = { fg = palette.blue, style = "underline" },
    SpellLocal = { fg = palette.cyan, style = "underline" },
    SpellRare = { fg = palette.purple, style = "underline" },

    QuickFixLine = { fg = palette.black, bg = palette.blue },
    ColorColumn = { bg = palette.background },

    NormalFloat = { fg = palette.foreground, bg = palette.background },
    FloatBorder = { fg = palette.brightBlack, bg = palette.background },

    DiffAdd = { bg = palette.darkGreen },
    DiffChange = { bg = palette.darkYellow },
    DiffDelete = { bg = palette.darkRed },
    DiffText = { bg = palette.darkBlue },

    GitSignsAdd = { fg = palette.green, bg = "NONE" },
    GitSignsChange = { fg = palette.yellow, bg = "NONE" },
    GitSignsDelete = { fg = palette.red, bg = "NONE" },

    Comment = { fg = palette.brightBlack, style = "italic" },
    String = { fg = palette.brightPurple },
    Number = { fg = palette.yellow },
    Boolean = { fg = palette.white },
    Keyword = { fg = palette.brightCyan },
    Function = { fg = palette.yellow, style = "bold" },
    Identifier = { fg = palette.red },
    Statement = { fg = palette.purple },
    Operator = { fg = palette.yellow },
    Type = { fg = palette.purple },
    PreProc = { fg = palette.purple },
    Constant = { fg = palette.purple },
    Todo = { fg = palette.purple, style = "bold" },
    Added = { fg = palette.green },
    Removed = { fg = palette.red },
    Changed = { fg = palette.yellow },
    Error = { fg = palette.red, bg = palette.darkRed },

    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.cyan },
    DiagnosticOk = { fg = palette.green },
    DiagnosticUnderlineError = { style = "undercurl", sp = palette.red },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = palette.blue },
    DiagnosticUnderlineHint = { style = "undercurl", sp = palette.cyan },
    DiagnosticDeprecated = { fg = palette.yellow, style = "strikethrough" },

    ["@variable"] = { fg = palette.white },
    ["@variable.builtin"] = { fg = palette.white },
    ["@variable.parameter.builtin"] = { fg = palette.white },
    ["@constant"] = { fg = palette.purple },
    ["@constant.builtin"] = { fg = palette.purple },
    ["@module"] = { fg = palette.brightPurple },
    ["@module.builtin"] = { fg = palette.brightPurple },
    ["@label"] = { fg = palette.blue },
    ["@label.builtin"] = { fg = palette.blue },
    ["@delimiter"] = { fg = palette.brightBlack },
    ["@string"] = { fg = palette.brightPurple },
    ["@string.builtin"] = { fg = palette.brightPurple },
    ["@string.regex"] = { fg = palette.brightPurple },
    ["@string.regexp"] = { fg = palette.brightPurple },
    ["@string.special"] = { fg = palette.purple },
    ["@string.escape"] = { fg = palette.purple },
    ["@string.special.url"] = { fg = palette.cyan, style = "underline" },
    ["@character"] = { fg = palette.yellow },
    ["@character.special"] = { fg = palette.purple },
    ["@boolean"] = { fg = palette.white },
    ["@number"] = { fg = palette.yellow },
    ["@number.float"] = { fg = palette.yellow },
    ["@type"] = { fg = palette.purple },
    ["@type.builtin"] = { fg = palette.purple },
    ["@attribute"] = { fg = palette.purple },
    ["@attribute.builtin"] = { fg = palette.purple },
    ["@property"] = { fg = palette.red },
    ["@function"] = { fg = palette.yellow, style = "bold" },
    ["@function.builtin"] = { fg = palette.yellow, style = "bold" },
    ["@constructor"] = { fg = palette.purple },
    ["@operator"] = { fg = palette.yellow },
    ["@keyword"] = { fg = palette.brightCyan },
    ["@punctuation"] = { fg = palette.white },
    ["@punctuation.special"] = { fg = palette.white },
    ["@comment"] = { fg = palette.brightBlack, style = "italic" },

    ["@markup"] = { fg = palette.blue },
    ["@markup.strong"] = { style = "bold" },
    ["@markup.italic"] = { style = "italic" },
    ["@markup.strikethrough"] = { style = "strikethrough" },
    ["@markup.underline"] = { style = "underline" },
    ["@markup.heading"] = { fg = palette.purple, style = "bold" },
    ["@markup.link"] = { fg = palette.cyan, style = "underline" },
    ["@markup.link.label.markdown_inline"] = { fg = palette.brightCyan, style = "bold" },

    ["@diff"] = { fg = palette.brightBlack },
    ["@diff.plus"] = { fg = palette.green },
    ["@diff.minus"] = { fg = palette.red },
    ["@diff.delta"] = { fg = palette.yellow },

    ["@tag"] = { fg = palette.purple },
    ["@tag.builtin"] = { fg = palette.purple },

    ["@lsp"] = { fg = palette.white },
    ["@lsp.type.class"] = { fg = palette.brightBlue },
    ["@lsp.type.comment"] = { fg = palette.brightBlack },
    ["@lsp.type.decorator"] = { fg = palette.brightPurple },
    ["@lsp.type.enum"] = { fg = palette.brightBlue },
    ["@lsp.type.enumMember"] = { fg = palette.brightBlue },
    ["@lsp.type.event"] = { fg = palette.brightBlue },
    ["@lsp.type.function"] = { fg = palette.yellow, style = "bold" },
    ["@lsp.type.interface"] = { fg = palette.brightBlue },
    ["@lsp.type.keyword"] = { fg = palette.brightCyan },
    ["@lsp.type.macro"] = { fg = palette.cyan },
    ["@lsp.type.method"] = { fg = palette.yellow },
    ["@lsp.type.modifier"] = { fg = palette.yellow },
    ["@lsp.type.namespace"] = { fg = palette.brightBlue },
    ["@lsp.type.number"] = { fg = palette.yellow },
    ["@lsp.type.operator"] = { fg = palette.yellow },
    ["@lsp.type.parameter"] = { fg = palette.purple },
    ["@lsp.type.property"] = { fg = palette.red },
    ["@lsp.type.regexp"] = { fg = palette.brightPurple },
    ["@lsp.type.string"] = { fg = palette.brightPurple },
    ["@lsp.type.struct"] = { fg = palette.brightBlue },
    ["@lsp.type.type"] = { fg = palette.purple },
    ["@lsp.type.typeParameter"] = { fg = palette.purple },
    ["@lsp.type.variable"] = { fg = palette.white },
    ["@lsp.mod.deprecated"] = { fg = palette.yellow, style = "strikethrough" },
  }

  if opts.transparent then
    highlights.Normal.bg = "NONE"
    highlights.NormalNC.bg = "NONE"
    highlights.NormalFloat.bg = "NONE"
    highlights.FloatBorder.bg = "NONE"
    highlights.StatusLine.bg = "NONE"
    highlights.StatusLineNC.bg = "NONE"
    highlights.StatusLineTerm.bg = "NONE"
    highlights.StatusLineTermNC.bg = "NONE"
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
