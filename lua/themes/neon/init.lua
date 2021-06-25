local c = require("themes.neon.colors")
local utils = require("themes.utils")
local cfg = require("themes.config").styles
local neon = {}

local function set_terminal_colors()
    vim.g.terminal_color_0 = c.gray
    vim.g.terminal_color_1 = c.aqua
    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_3 = c.purple
    vim.g.terminal_color_4 = c.yellow
    vim.g.terminal_color_5 = c.red
    vim.g.terminal_color_6 = c.purple
    vim.g.terminal_color_7 = c.blue
    vim.g.terminal_color_8 = c.yellow
    vim.g.terminal_color_9 = c.red
    vim.g.terminal_color_10 = c.green
    vim.g.terminal_color_11 = c.aqua
    vim.g.terminal_color_12 = c.aqua
    vim.g.terminal_color_13 = c.purple
    vim.g.terminal_color_14 = c.green
    vim.g.terminal_color_15 = c.purple
    vim.g.terminal_color_background = c.bg
    vim.g.terminal_color_foreground = c.fg
end

local function set_groups()
    local groups = {
        Comment = {fg = c.comment, style = cfg.italic_comment}, -- any comment
        ColorColumn = {bg = c.bg_visual}, -- used for the columns set with 'colorcolumn'
        Conceal = {fg = c.fg_gutter}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = {fg = c.bg, bg = c.fg}, -- character under the cursor
        lCursor = {fg = c.bg, bg = c.fg}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = {fg = c.bg, bg = c.fg}, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = {bg = c.bg_highlight}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = {bg = c.bg_highlight}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory = {fg = c.blue}, -- directory names (and other special names in listings)
        DiffAdd = {bg = c.diff_add}, -- diff mode: Added line |diff.txt|
        DiffChange = {bg = c.diff_change}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {bg = c.diff_delete}, -- diff mode: Deleted line |diff.txt|
        DiffText = {bg = c.diff_text}, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = {fg = c.bg}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor  = { }, -- cursor in a focused terminal
        -- TermCursorNC= { }, -- cursor in an unfocused terminal
        ErrorMsg = {fg = c.error}, -- error messages on the command line
        VertSplit = {fg = c.border}, -- the column separating vertically split windows
        Folded = {fg = c.blue, bg = c.fg_gutter}, -- line used for closed folds
        FoldColumn = {bg = c.bg, fg = c.comment}, -- 'foldcolumn'
        SignColumn = {bg = cfg.transparent and c.none or c.bg, fg = c.fg_gutter}, -- column where |signs| are displayed
        SignColumnSB = {bg = c.bg_sidebar, fg = c.fg_gutter}, -- column where |signs| are displayed
        Substitute = {bg = c.red, fg = c.bg_dark}, -- |:substitute| replacement text highlighting
        LineNr = {fg = c.fg_gutter}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = {fg = c.fg_dark}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen = {fg = c.orange, style = "bold"}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = {fg = c.fg_dark, style = "bold"}, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = {fg = c.fg_dark}, -- Area for messages and cmdline
        -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = {fg = c.blue}, -- |more-prompt|
        NonText = {fg = c.comment}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = {fg = c.fg, bg = cfg.transparent and c.none or c.bg}, -- normal text
        NormalNC = {fg = c.fg, bg = cfg.transparent and c.none or c.bg}, -- normal text in non-current windows
        NormalSB = {fg = c.fg_sidebar, bg = c.bg_sidebar}, -- normal text in non-current windows
        NormalFloat = {fg = c.fg, bg = c.bg_float}, -- Normal text in floating windows.
        FloatBorder = {fg = c.border_highlight},
        Pmenu = {bg = c.bg_popup, fg = c.fg}, -- Popup menu: normal item.
        PmenuSel = {bg = utils.darken(c.fg_gutter, 0.8)}, -- Popup menu: selected item.
        PmenuSbar = {bg = utils.lighten(c.bg_popup, 0.95)}, -- Popup menu: scrollbar.
        PmenuThumb = {bg = c.fg_gutter}, -- Popup menu: Thumb of the scrollbar.
        Question = {fg = c.blue}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = {bg = c.bg_visual, style = "bold"}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = {bg = c.bg_search, fg = c.bg}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = {bg = c.orange, fg = c.bg}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        SpecialKey = {fg = c.comment}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = {sp = c.error, style = "undercurl"}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = {sp = c.warning, style = "undercurl"}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = {sp = c.info, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = {sp = c.hint, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = {fg = c.fg_sidebar, bg = c.bg_statusline}, -- status line of current window
        StatusLineNC = {fg = c.fg_gutter, bg = c.bg_statusline}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = {bg = c.bg_statusline, fg = c.fg_gutter}, -- tab pages line, not active tab page label
        TabLineFill = {bg = c.bg_dark}, -- tab pages line, where there are no labels
        TabLineSel = {fg = c.bg_dark, bg = c.blue}, -- tab pages line, active tab page label
        Title = {fg = c.blue, style = "bold"}, -- titles for output from ":set all", ":autocmd" etc.
        Visual = {bg = c.bg_visual}, -- Visual mode selection
        VisualNOS = {bg = c.bg_visual}, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = {fg = c.warning}, -- warning messages
        Whitespace = {fg = c.fg_gutter}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = {bg = c.bg_visual}, -- current match in 'wildmenu' completion
        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Boolean = {fg = c.red, style = cfg.italic_boolean}, --  a boolean constant: TRUE, false
        Constant = {fg = c.orange}, -- (preferred) any constant
        String = {fg = c.green}, --   a string constant: "this is a string"
        Character = {fg = c.green}, --  a character constant: 'c', '\n'
        -- Number        = { }, --   a number constant: 234, 0xff
        -- Float         = { }, --    a floating point constant: 2.3e10

        Identifier = {fg = c.magenta, style = cfg.italic_variable}, -- (preferred) any variable name
        Function = {fg = c.blue, style = cfg.italic_function}, -- function name (also: methods for classes)
        Statement = {fg = c.magenta}, -- (preferred) any statement
        -- Conditional   = { }, --  if, then, else, endif, switch, etc.
        -- Repeat        = { }, --   for, do, while, etc.
        -- Label         = { }, --    case, default, etc.
        Operator = {fg = c.cyan}, -- "sizeof", "+", "*", etc.
        Keyword = {fg = c.cyan, style = cfg.italic_keyword}, --  any other keyword
        -- Exception     = { }, --  try, catch, throw

        PreProc = {fg = c.cyan}, -- (preferred) generic Preprocessor
        -- Include       = { }, --  preprocessor #include
        -- Define        = { }, --   preprocessor #define
        -- Macro         = { }, --    same as Define
        -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

        Type = {fg = c.aqua}, -- (preferred) int, long, char, etc.
        -- StorageClass  = { }, -- static, register, volatile, etc.
        -- Structure     = { }, --  struct, union, enum, etc.
        -- Typedef       = { }, --  A typedef

        Special = {fg = c.aqua}, -- (preferred) any special symbol
        -- SpecialChar   = { }, --  special character in a constant
        -- Tag           = { }, --    you can use CTRL-] on this
        -- Delimiter     = { }, --  character that needs attention
        -- SpecialComment= { }, -- special things inside a comment
        -- Debug         = { }, --    debugging statements

        Underlined = {style = "underline"}, -- (preferred) text that stands out, HTML links
        Bold = {style = "bold"},
        Italic = {style = "italic"},
        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = {fg = c.error}, -- (preferred) any erroneous construct
        Todo = {bg = c.orange, fg = c.bg}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        qfLineNr = {fg = c.fg_dark},
        qfFileName = {fg = c.blue},
        htmlH1 = {fg = c.magenta, style = "bold"},
        htmlH2 = {fg = c.blue, style = "bold"},
        -- mkdHeading = { fg = c.orange, style = "bold" },
        -- mkdCode = { bg = c.bg_dark, fg = c.fg },
        mkdCodeDelimiter = {bg = c.bg_dark, fg = c.fg},
        mkdCodeStart = {fg = c.teal, style = "bold"},
        mkdCodeEnd = {fg = c.teal, style = "bold"},
        -- mkdLink = { fg = c.blue, style = "underline" },

        markdownHeadingDelimiter = {fg = c.orange, style = "bold"},
        markdownCode = {fg = c.teal},
        markdownCodeBlock = {fg = c.teal},
        markdownH1 = {fg = c.magenta, style = "bold"},
        markdownH2 = {fg = c.blue, style = "bold"},
        markdownLinkText = {fg = c.blue, style = "underline"},
        debugPC = {bg = c.bg_sidebar}, -- used for highlighting the current line in terminal-debug
        debugBreakpoint = {bg = utils.darken(c.info, 0.1), fg = c.info}, -- used for breakpoint colors in terminal-debug
        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        LspReferenceText = {bg = c.fg_gutter}, -- used for highlighting "text" references
        LspReferenceRead = {bg = c.fg_gutter}, -- used for highlighting "read" references
        LspReferenceWrite = {bg = c.fg_gutter}, -- used for highlighting "write" references
        LspDiagnosticsDefaultError = {fg = c.error}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning = {fg = c.warning}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation = {fg = c.info}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint = {fg = c.hint}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsVirtualTextError = {bg = utils.darken(c.error, 0.1), fg = c.error}, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = {bg = utils.darken(c.warning, 0.1), fg = c.warning}, -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = {bg = utils.darken(c.info, 0.1), fg = c.info}, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = {bg = utils.darken(c.hint, 0.1), fg = c.hint}, -- Used for "Hint" diagnostic virtual text
        LspDiagnosticsUnderlineError = {style = "undercurl", sp = c.error}, -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning = {style = "undercurl", sp = c.warning}, -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation = {style = "undercurl", sp = c.info}, -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = {style = "undercurl", sp = c.hint}, -- Used to underline "Hint" diagnostics
        -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        -- LspDiagnosticsSignError             = { }, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning           = { }, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation       = { }, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint              = { }, -- Used for "Hint" signs in sign column
        -----------------------------------//
        -- TreeSitter highlight groups
        -----------------------------------//
        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute         = { };    -- (unstable) TODO: docs
        -- TSBoolean           = { };    -- For booleans.
        -- TSCharacter         = { };    -- For characters.
        -- TSComment           = { };    -- For comment blocks.
        TSNote = {fg = c.bg, bg = c.info},
        TSWarning = {fg = c.bg, bg = c.warning},
        TSDanger = {fg = c.bg, bg = c.error},
        TSConstructor = {fg = c.magenta}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        -- TSConditional       = { };    -- For keywords related to conditionnals.
        -- TSConstant          = { };    -- For constants
        -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
        -- TSError             = { };    -- For syntax/parser errors.
        -- TSException         = { };    -- For exception related keywords.
        TSField = {fg = c.aqua}, -- For fields.
        -- TSFloat             = { };    -- For floats.
        -- TSFunction          = { };    -- For function (calls and definitions).
        -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
        -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword = {fg = c.purple, style = cfg.italic_keyword}, -- For keywords that don't fall in previous categories.
        TSKeywordFunction = {fg = c.magenta, style = cfg.italic_function}, -- For keywords used to define a fuction.
        TSLabel = {fg = c.blue}, -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod            = { };    -- For method calls and definitions.
        -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
        -- TSNone              = { };    -- TODO: docs
        -- TSNumber            = { };    -- For all numbers
        TSOperator = {fg = c.cyan}, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = {fg = c.yellow}, -- For parameters of a function.
        -- TSParameterReference= { };    -- For references to parameters of a function.
        TSProperty = {fg = c.aqua}, -- Same as `TSField`.
        TSPunctDelimiter = {fg = c.cyan}, -- For delimiters ie: `.`
        TSPunctBracket = {fg = c.fg_dark}, -- For brackets and parens.
        TSPunctSpecial = {fg = c.cyan}, -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat            = { };    -- For keywords related to loops.
        -- TSString            = { };    -- For strings.
        TSStringRegex = {fg = c.orange}, -- For regexes.
        TSStringEscape = {fg = c.magenta}, -- For escape characters within a string.
        -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
        -- TSType              = { };    -- For types.
        -- TSTypeBuiltin       = { };    -- For builtin types.
        TSVariable = {style = cfg.italic_variable}, -- Any variable name that does not have another highlight.
        TSVariableBuiltin = {fg = c.red}, -- Variable names that are defined by the languages, like `this` or `self`.
        -- TSTag               = { };    -- Tags like html tag names.
        -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
        -- TSText              = { };    -- For strings considered text in a markup language.
        TSTextReference = {fg = c.teal},
        -- TSEmphasis          = { };    -- For text to be represented with emphasis.
        -- TSUnderline         = { };    -- For text to be represented with an underline.
        -- TSStrike            = { };    -- For strikethrough text.
        -- TSTitle             = { };    -- Text that is part of a title.
        -- TSLiteral           = { };    -- Literal text.
        -- TSURI               = { };    -- Any URI like a link or email.
        -----------------------------------//
        -- Plugins highlight groups
        -----------------------------------//
        -- LspTrouble
        LspTroubleText = {fg = c.fg_dark},
        LspTroubleCount = {fg = c.magenta, bg = c.fg_gutter},
        LspTroubleNormal = {fg = c.fg_sidebar, bg = c.bg_sidebar},
        -- Illuminate
        illuminatedWord = {bg = c.fg_gutter},
        illuminatedCurWord = {bg = c.fg_gutter},
        -- diff
        diffAdded = {fg = c.git_add},
        diffRemoved = {fg = c.git_delete},
        diffChanged = {fg = c.git_change},
        diffOldFile = {fg = c.yellow},
        diffNewFile = {fg = c.orange},
        diffFile = {fg = c.blue},
        diffLine = {fg = c.comment},
        diffIndexLine = {fg = c.magenta},
        -- Neogit
        NeogitBranch = {fg = c.magenta},
        NeogitRemote = {fg = c.purple},
        NeogitHunkHeader = {bg = c.bg_highlight, fg = c.fg},
        NeogitHunkHeaderHighlight = {bg = c.fg_gutter, fg = c.blue},
        NeogitDiffContextHighlight = {bg = utils.darken(c.fg_gutter, 0.5), fg = c.fg_dark},
        NeogitDiffDeleteHighlight = {fg = c.git_delete, bg = c.diff_delete},
        NeogitDiffAddHighlight = {fg = c.git_add, bg = c.diff_add},
        -- GitGutter
        GitGutterAdd = {fg = c.git_add}, -- diff mode: Added line |diff.txt|
        GitGutterChange = {fg = c.git_change}, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = {fg = c.git_delete}, -- diff mode: Deleted line |diff.txt|
        -- GitSigns
        GitSignsAdd = {fg = c.git_add}, -- diff mode: Added line |diff.txt|
        GitSignsChange = {fg = c.git_change}, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = {fg = c.git_delete}, -- diff mode: Deleted line |diff.txt|
        -- Telescope
        TelescopeBorder = {fg = c.border_highlight},
        -- NvimTree
        NvimTreeNormal = {fg = c.fg, bg = c.bg_sidebar},
        NvimTreeRootFolder = {fg = c.blue, style = "bold"},
        NvimTreeGitDirty = {fg = c.git_change},
        NvimTreeGitNew = {fg = c.git_add},
        NvimTreeGitDeleted = {fg = c.git_delete},
        NvimTreeSpecialFile = {fg = c.purple, style = "underline"},
        LspDiagnosticsError = {fg = c.error},
        LspDiagnosticsWarning = {fg = c.warning},
        LspDiagnosticsInformation = {fg = c.info},
        LspDiagnosticsHint = {fg = c.hint},
        NvimTreeIndentMarker = {fg = c.fg_gutter},
        NvimTreeImageFile = {fg = c.fg_sidebar},
        NvimTreeSymlink = {fg = c.blue},
        -- NvimTreeFolderName= { fg = c.fg_float },
        -- Dashboard
        DashboardShortCut = {fg = c.cyan},
        DashboardHeader = {fg = c.blue},
        DashboardCenter = {fg = c.magenta},
        DashboardFooter = {fg = c.yellow, style = "italic"},
        -- WhichKey
        WhichKey = {fg = c.cyan},
        WhichKeyGroup = {fg = c.blue},
        WhichKeyDesc = {fg = c.magenta},
        WhichKeySeperator = {fg = c.comment},
        WhichKeySeparator = {fg = c.comment},
        WhichKeyFloat = {bg = c.bg_sidebar},
        WhichKeyValue = {fg = c.fg_dark},
        -- LspSaga
        DiagnosticError = {fg = c.error},
        DiagnosticWarning = {fg = c.warning},
        DiagnosticInformation = {fg = c.info},
        DiagnosticHint = {fg = c.hint},
        -- NeoVim
        healthError = {fg = c.error},
        healthSuccess = {fg = c.aqua},
        healthWarning = {fg = c.warning},
        -- BufferLine
        BufferLineIndicatorSelected = {fg = c.git_change},
        BufferLineFill = {bg = c.bg_dark},
        -- Sneak
        Sneak = {fg = c.bg_highlight, bg = c.magenta},
        SneakScope = {bg = c.bg_visual},
        -- Hop
        -- HopNextKey = { fg = c.teal },
        -- HopNextKey1 = { fg = c.blue },
        -- HopNextKey2 = { fg = utils.lighten(c.blue, .3) },
        HopUnmatched = {fg = c.comment},
        -- vim-signify
        SignifySignAdd = {fg = c.bg_green},
        SignifySignChange = {fg = c.bg_yellow},
        SignifySignDelete = {fg = c.bg_red},
        -- Syntastic
        SyntasticError = {fg = c.red},
        SyntasticWarning = {fg = c.yellow},
        SyntasticErrorSign = {fg = c.red},
        SyntasticWarningSign = {fg = c.yellow},
        -- Nerdtree
        NERDTreeDir = {fg = c.purple},
        NERDTreeDirSlash = {fg = c.blue},
        NERDTreeOpenable = {fg = c.orange},
        NERDTreeClosable = {fg = c.orange},
        NERDTreeFile = {fg = c.blue},
        NERDTreeExecFile = {fg = c.green},
        NERDTreeUp = {fg = c.gray},
        NERDTreeCWD = {fg = c.green},
        NERDTreeHelp = {fg = c.gray_alt},
        NERDTreeToggleOn = {fg = c.green},
        NERDTreeToggleOff = {fg = c.red},
        -- Ale-vim
        ALEError = {fg = c.red},
        ALEWarning = {fg = c.orange},
        ALEInfo = {fg = c.blue},
        ALEErrorSign = {fg = c.red},
        ALEWarningSign = {fg = c.orange},
        ALEInfoSign = {fg = c.blue},
        ALEVirtualTextError = {fg = c.red},
        ALEVirtualTextWarning = {fg = c.yellow},
        ALEVirtualTextInfo = {fg = c.blue},
        -- BufferLine
        BufferLineIndicatorSelected = {fg = c.green},
        BufferLineFill = {bg = c.bg1},
        -- Sneak
        Sneak = {fg = c.bg0, bg = c.green},
        SneakScope = {bg = c.bg0},
        -- Indent Blankline
        IndentBlanklineChar = {fg = c.gray1},
        IndentBlanklineContextChar = {fg = c.fg},
        -- Nvim dap
        DapBreakpoint = {fg = c.red},
        DapStopped = {fg = c.green},
        -- Startify
        StartifyNumber = {fg = c.blue},
        StartifySelect = {fg = c.green},
        StartifyBracket = {fg = c.gray},
        StartifySpecial = {fg = c.cyan},
        StartifyVar = {fg = c.blue},
        StartifyPath = {fg = c.purple},
        StartifyFile = {fg = c.green},
        StartifySlash = {fg = c.yellow},
        StartifyHeader = {fg = c.red},
        StartifySection = {fg = c.red},
        StartifyFooter = {fg = c.green},
        -- EasyMotion
        EasyMotionTarget = {fg = c.red, bg = c.none, style = "bold"},
        EasyMotionTarget2First = {fg = c.red, bg = c.none, style = "bold"},
        EasyMotionTarget2Second = {fg = c.red, bg = c.none, style = "bold"},
        -- CoC
        CocErrorSign = {fg = c.red},
        CocWarningSign = {fg = c.orange},
        CocInfoSign = {fg = c.green},
        CocHintSign = {fg = c.blue},
        CocErrorFloat = {fg = c.red},
        CocWarningFloat = {fg = c.orange},
        CocInfoFloat = {fg = c.green},
        CocHintFloat = {fg = c.blue},
        CocDiagnosticsError = {fg = c.red},
        CocDiagnosticsWarning = {fg = c.orange},
        CocDiagnosticsInfo = {fg = c.green},
        CocDiagnosticsHint = {fg = c.blue},
        CocSelectedText = {fg = c.red},
        CocCodeLens = {fg = c.gray1},
        CocErrorHighlight = {fg = c.red},
        CocWarningHighlight = {fg = c.orange},
        CocInfoHighlight = {fg = c.green},
        CocHintHighlight = {fg = c.blue},
        CocExplorerIndentLine = {fg = c.gray1},
        CocExplorerBufferRoot = {fg = c.cyan},
        CocExplorerFileRoot = {fg = c.cyan},
        CocExplorerBufferFullPath = {fg = c.gray1},
        CocExplorerFileFullPath = {fg = c.gray1},
        CocExplorerBufferReadonly = {fg = c.purple},
        CocExplorerBufferModified = {fg = c.purple},
        CocExplorerBufferNameVisible = {fg = c.orange},
        CocExplorerFileReadonly = {fg = c.purple},
        CocExplorerFileModified = {fg = c.purple},
        CocExplorerFileHidden = {fg = c.gray1},
        CocExplorerHelpLine = {fg = c.purple}
    }

    local overrides = vim.g.forest_overrides
    if overrides then
        vim.tbl_extend("force", groups, overrides)
    end

    for group, parameters in pairs(groups) do
        utils.highlight(group, parameters)
    end
end

function neon.colorscheme()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "neon"

    -- c.generate()
    set_terminal_colors()
    set_groups()
end

return neon
