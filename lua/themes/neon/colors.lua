local util = require("themes.utils")

local colors = {}

colors = {
    none = "NONE",
    bg_dark = "#202328", -- popups, statusline, sidebar, float
    bg = "#2b2d37", -- Normal background
    bg_highlight = "#333644", -- cursor line and column
    fg = "#ADD8E6", -- normal text
    fg_dark = "#D8BFD8", -- brackets and parents, cmd line messages
    fg_gutter = "#4C566A", -- conceal, closed folds, menu selected item...
    comment = "#676E95", -- comments
    red = "#ec7279", -- boolean, variable built-in, error
    orange = "#da8548", -- Constant, TODO, MatchParen, IncSearch
    yellow = "#ECBE7B", -- parameter of a funciton, warning
    green = "#a0c980", -- strings
    aqua = "#5699AF", -- type (int, long, char, etc), special symbol, fields
    blue = "#6cb6eb", -- function name, labels...
    cyan = "#4db5bd", -- operators, any other keyword
    teal = "#458588", -- markdown codeblocks, text references
    magenta = "#a9a1e1", -- identifier, statements (if, then, while, for, etc), constructor...
    purple = "#d38aea", -- keywords
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
