local util = require("themes.utils")

local colors = {}

colors = {
	none = "NONE",
	bg_dark = "#20252c", -- popups, statusline, sidebar, float
	bg = "#1e222a", -- Normal background
	bg_highlight = "#2c313c", -- cursor line and column
	black2 = "#252931",
	bg2 = "#353b45",
	bg3 = "#30343c",
	fg = "#abb2bf", -- normal text
	comment = "#818896", -- comments
	fg_gutter = "#42464e", -- conceal, closed folds, menu selected item...
	gray_fg = "#565c64",
	gray_fg2 = "#6f737b",
	light_gray = "#6f737b",
	red = "#e06c75", -- boolean, variable built-in, error
	orange = "#d19a66", -- Constant, TODO, MatchParen, IncSearch
	yellow = "#e5c07b", -- parameter of a funciton, warning
	green = "#98c379", -- strings
	aqua = "#7eca9c", -- type (int, long, char, etc), special symbol, fields
	blue = "#61afef", -- function name, labels...
	cyan = "#599874", -- operators, any other keyword
	teal = "#519ABA", -- markdown codeblocks, text references
	magenta = "#c678dd", -- identifier, statements (if, then, while, for, etc), constructor...
	purple = "#c882e7",
}

-- diff
colors.diff_add = util.darken(colors.green, 0.15)
colors.diff_delete = util.darken(colors.red, 0.15)
colors.diff_change = util.darken(colors.orange, 0.15)
colors.diff_text = util.darken(colors.blue, 0.15)

-- git
colors.git_add = util.lighten(colors.green, 0.90)
colors.git_change = util.lighten(colors.orange, 0.90)
colors.git_delete = util.lighten(colors.red, 0.90)

-- Popups and statusline always get a dark background
colors.bg_popup = colors.bg_dark
colors.bg_statusline = colors.bg_dark

-- Sidebar and Floats
colors.bg_sidebar = colors.bg_dark
colors.bg_float = colors.bg_dark

colors.bg_visual = util.darken(colors.blue, 0.6)
colors.bg_search = colors.blue
colors.fg_sidebar = colors.bg_dark

colors.error = colors.red
colors.warning = colors.yellow
colors.info = colors.blue
colors.hint = colors.cyan

return colors
