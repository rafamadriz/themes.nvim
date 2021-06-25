local util = require("themes.utils")

local colors = {}

colors = {
    none = "NONE",
    bg_dark = "#212528", -- popups, statusline, sidebar, float
    bg = "#2A2F33", -- Normal background
    bg_highlight = "#3F464B", -- cursor line and column
    fg = "#bfddb2", -- normal text
    fg_dark = "#91c57b", -- brackets and parents, cmd line messages
    fg_gutter = "#5b6855", -- conceal, closed folds, menu selected item...
    comment = "#7b8d73", -- comments
    red = "#d39bb6", -- boolean, variable built-in, error
    orange = "#bb9af7", -- Constant, TODO, MatchParen, IncSearch
    yellow = "#c1bf89", -- parameter of a funciton, warning
    green = "#ACB765", -- strings
    aqua = "#87c095", -- type (int, long, char, etc), special symbol, fields
    blue = "#82abbc", -- function name, labels...
    cyan = "#7dcfff", -- operators, any other keyword
    teal = "#3cb371", -- markdown codeblocks, text references
    magenta = "#d76e6e", -- identifier, statements (if, then, while, for, etc), constructor...
    purple = "#e5a46b", -- keywords
    gray = "#7e8294"
}

-- diff
colors.diff_add = util.darken(colors.green, 0.15)
colors.diff_delete = util.darken(colors.red, 0.15)
colors.diff_change = util.darken(colors.orange, 0.15)
colors.diff_text = util.darken(colors.blue, 0.15)

-- git
colors.git_add = util.lighten(colors.cyan, 0.90)
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
