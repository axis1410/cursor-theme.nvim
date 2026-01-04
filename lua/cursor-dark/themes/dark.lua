local M = {}

local palette = {
	background = "#1A1A1A",
	foreground = "#D8DEE9",
	cursor = "#87C3FF",
	selection = "#2E2E2E",

	brightBlack = "#505050",
	brightBlue = "#85C1FC",
	brightCyan = "#83D6C5",
	brightGreen = "#A3BE8C",
	brightPurple = "#C582BF",
	brightRed = "#BF616A",
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
	yellow = "#EFB080",
}

function M.highlights()
	return {
		Normal = { fg = palette.foreground, bg = palette.background },
		NormalFloat = { fg = palette.foreground, bg = palette.background },

		Cursor = { fg = palette.foreground, bg = palette.cursor, nocombine = true },
		CursorLine = { bg = palette.darkBlack },
		CursorColumn = { bg = palette.darkBlack },
		CursorLineNr = { fg = palette.purple },

		LineNr = { fg = palette.brightBlack },
		SignColumn = { fg = palette.brightBlack, bg = palette.background },
		WinSeparator = { fg = palette.black },

		Visual = { bg = palette.selection },
		Search = { fg = palette.yellow, bg = palette.darkYellow },
		CurSearch = { fg = palette.background, bg = palette.brightYellow },

		Pmenu = { fg = palette.foreground, bg = palette.black },
		PmenuSel = { fg = palette.black, bg = palette.blue },

		Comment = { fg = palette.brightBlack, italic = true },
		String = { fg = palette.brightPurple },
		Number = { fg = palette.yellow },
		Boolean = { fg = palette.foreground },
		Identifier = { fg = palette.red },
		Function = { fg = palette.yellow, bold = true },
		Keyword = { fg = palette.brightCyan },
		Type = { fg = palette.purple },
		Operator = { fg = palette.yellow },

		DiagnosticError = { fg = palette.brightRed },
		DiagnosticWarn = { fg = palette.brightYellow },
		DiagnosticInfo = { fg = palette.brightBlue },
		DiagnosticHint = { fg = palette.brightCyan },
	}
end

return M
