local util = require("themes.utils")

local colors = {}

colors = {
    none = "NONE",
    bg_dark = "#20252c", -- popups, statusline, sidebar, float
    bg = "#282c34", -- Normal background
    bg_highlight = "#2c313c", -- cursor line and column
    fg = "#abb2bf", -- normal text
    fg_dark = "#C4C9D2", -- brackets and parents, cmd line messages
    fg_gutter = "#676E95", -- conceal, closed folds, menu selected item...
    comment = "#818896", -- comments
    red = "#e06c75", -- boolean, variable built-in, error
    orange = "#d19a66", -- Constant, TODO, MatchParen, IncSearch
    yellow = "#e5c07b", -- parameter of a funciton, warning
    green = "#98c379", -- strings
    aqua = "#e5c07b", -- type (int, long, char, etc), special symbol, fields
    blue = "#61afef", -- function name, labels...
    cyan = "#56b6c2", -- operators, any other keyword
    teal = "#109868", -- markdown codeblocks, text references
    magenta = "#c678dd", -- identifier, statements (if, then, while, for, etc), constructor...
    purple = "#c678dd", -- keywords
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
