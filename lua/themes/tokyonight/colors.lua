local util = require("themes.utils")

local colors = {}

colors = {
    none = "NONE",
    bg_dark = "#1f2335", -- popups, statusline, sidebar, float
    bg = "#24283b", -- Normal background
    bg_highlight = "#292e42", -- cursor line and column
    fg = "#c0caf5", -- normal text
    fg_dark = "#a9b1d6", -- brackets and parents, cmd line messages
    fg_gutter = "#3b4261", -- conceal, closed folds, menu selected item...
    comment = "#565f89", -- comments
    red = "#f7768e", -- boolean, variable built-in, error
    orange = "#ff9e64", -- Constant, TODO, MatchParen, IncSearch
    yellow = "#e0af68", -- parameter of a funciton, warning
    green = "#9ece6a", -- strings
    aqua = "#7dcfff", -- type (int, long, char, etc), special symbol, fields
    blue = "#7aa2f7", -- function name, labels...
    cyan = "#2ac3de", -- operators, any other keyword
    teal = "#1abc9c", -- markdown codeblocks, text references
    magenta = "#bb9af7", -- identifier, statements (if, then, while, for, etc), constructor...
    purple = "#9d7cd8", -- keywords
    gray = "#a9b1d6"
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
