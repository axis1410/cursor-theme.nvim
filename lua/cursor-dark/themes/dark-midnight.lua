local M = {}

local palette = {
	background = "#1E2127",
	foreground = "#EBEEF4",
	cursor = "#A6BF91",
	selection = "#21252B",

	brightBlack = "#535D71",
	brightBlue = "#85A4C3",
	brightCyan = "#93BDBD",
	brightGreen = "#A6BF91",
	brightPurple = "#B692B0",
	brightRed = "#C06771",
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
	yellow = "#EACC90",
}

function M.highlights()
	return {
		Normal = { fg = palette.foreground, bg = palette.background },
		NormalFloat = { fg = palette.foreground, bg = palette.background },

		Cursor = { fg = palette.foreground, bg = palette.cursor, nocombine = true },
		CursorLine = { bg = palette.selection },
		CursorColumn = { bg = palette.selection },
		CursorLineNr = { fg = palette.brightBlack },

		LineNr = { fg = palette.brightBlack },
		SignColumn = { fg = palette.brightBlack, bg = palette.background },
		WinSeparator = { fg = palette.black },

		Visual = { bg = palette.darkBlue },
		Search = { fg = palette.yellow, bg = palette.darkYellow },
		CurSearch = { fg = palette.background, bg = palette.brightYellow },

		Pmenu = { fg = palette.foreground, bg = palette.black },
		PmenuSel = { fg = palette.black, bg = palette.blue },

		Comment = { fg = palette.brightBlack, italic = true },
		String = { fg = palette.green },
		Number = { fg = palette.purple },
		Boolean = { fg = palette.yellow },
		Identifier = { fg = palette.red },
		Function = { fg = palette.blue },
		Keyword = { fg = palette.purple },
		Type = { fg = palette.brightBlue },
		Operator = { fg = palette.blue },

		DiagnosticError = { fg = palette.brightRed },
		DiagnosticWarn = { fg = palette.brightYellow },
		DiagnosticInfo = { fg = palette.brightBlue },
		DiagnosticHint = { fg = palette.brightCyan },
	}
end

return M
