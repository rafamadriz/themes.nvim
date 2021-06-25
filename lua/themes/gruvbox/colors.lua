local util = require("themes.utils")

local colors = {}

colors = {
    none = "NONE",
    bg_dark = "#1d2021", -- popups, statusline, sidebar, float
    bg = "#282828", -- Normal background
    bg_highlight = "#32302f", -- cursor line and column
    fg = "#ebdbb2", -- normal text
    fg_dark = "#bdae93", -- brackets and parents, cmd line messages
    fg_gutter = "#7c6f64", -- conceal, closed folds, menu selected item...
    comment = "#a89984", -- comments
    red = "#fe8019", -- boolean, variable built-in, error
    orange = "#d3869b", -- Constant, TODO, MatchParen, IncSearch
    yellow = "#83a598", -- parameter of a funciton, warning
    green = "#b8bb26", -- strings
    aqua = "#83a598", -- type (int, long, char, etc), special symbol, fields
    blue = "#fabd2f", -- function name, labels...
    cyan = "#8ec07c", -- operators, any other keyword
    teal = "#427b58", -- markdown codeblocks, text references
    magenta = "#fb4934", -- identifier, statements (if, then, while, for, etc), constructor...
    purple = "#fb4934", -- keywords
    gray = "#a89984"
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
