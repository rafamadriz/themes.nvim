local util = require("themes.utils")

local colors = {}

colors = {
	none = "NONE",
	bg_dark = "#1F1F1F", -- popups, statusline, sidebar, float
	bg = "#2B2B2B", -- Normal background
	bg_highlight = "#323232", -- cursor line and column
	fg = "#A9B7C6", -- normal text
	fg_dark = "#a9b1d6", -- brackets and parents, cmd line messages
	fg_gutter = "#A4A3A3", -- conceal, closed folds, menu selected item...
	comment = "#808080", -- comments
	red = "#CC7832", -- boolean, variable built-in, error
	orange = "#9876AA", -- Constant, TODO, MatchParen, IncSearch
	yellow = "#e0af68", -- parameter of a funciton, warning
	green = "#6A8759", -- strings
	aqua = "#9373A5", -- type (int, long, char, etc), special symbol, fields
	blue = "#FFC66D", -- function name, labels...
	cyan = "#6897BB", -- operators, any other keyword
	teal = "#287BDE", -- markdown codeblocks, text references
	magenta = "#bb9af7", -- identifier, statements (if, then, while, for, etc), constructor...
	purple = "#CC7832", -- keywords
	gray = "#a9b1d6",
}

colors.matchBraceFg = "#FFEF28"
colors.matchBraceBg = "#3B514D"
colors.foldedFg = "#8C8C8C"
colors.foldedBg = "#3A3A3A"
colors.number = "#6897BB"
colors.menuSel = "#113A5C"
colors.functionParam = "#A5C261"

-- diff
colors.diff_add = "#294436"
colors.diff_delete = "#9E2927"
colors.diff_change = "#303C47"
colors.diff_text = "#385570"

-- git
colors.git_add = "#384C38"
colors.git_change = "#e0af68"
colors.git_delete = "#9E2927"

-- Popups and statusline always get a dark background
colors.bg_popup = colors.bg_dark
colors.bg_statusline = colors.bg_dark

-- Sidebar and Floats
colors.bg_sidebar = colors.bg_dark
colors.bg_float = colors.bg_dark

colors.bg_visual = util.darken(colors.blue, 0.6)
colors.bg_search = colors.blue
colors.fg_sidebar = colors.bg_dark

colors.error = "#9E2927"
colors.warning = "#52503A"
colors.info = "#385570"
colors.hint = "#6c7176"

return colors
