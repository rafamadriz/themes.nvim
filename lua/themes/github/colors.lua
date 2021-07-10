local util = require("themes.utils")

local colors = {}

colors = {
	fg_dark = "#666666",
	term_fg = "#d1d5da",
	orange = "#d18616",
	black = "#24292e",
	brightBlack = "#666666",
	white = "#b1bac4",
	brightWhite = "#e5e5e5",
	red = "#f14c4c",
	brightRed = "#f14c4c",
	green = "#23d18b",
	brightGreen = "#23d18b",
	yellow = "#e2e210",
	brightYellow = "#f5f543",
	blue = "#3b8eea",
	brightBlue = "#3b8eea",
	magenta = "#bc3fbc",
	brightMagenta = "#d670d6",
	cyan = "#29b7da",
	brightCyan = "#29b8db",
	bg = "#24292e",
	bg2 = "#1f2428",
	bg_visual = "#1b1f23",
	bg_visual_selection = "#284566",
	bg_highlight = "#2C313A",
	fg = "#C9D1D9",
	fg_light = "#d1d5da",
	fg_gutter = "#e1e4e8",
	cursor = "#c8e1ff",
	line_nr = "#444d56",
	cursor_line_nr = "#e1e4e8",
	fg_search = "NONE",
	bg_search = "#404030",
	error = "#f97583",
	warning = "#cca700",
	info = "#75beff",
	hint = "#eeeeb3",
	syntax = {
		comment = "#6a737d",
		constant = "#79b8ff",
		commentConstant = "#b392f0",
		string = "#9ecbff",
		variable = "#79b8ff",
		keyword = "#f97583",
		func = "#b392f0",
		func_param = "#e1e4e8",
		matchParenBG = "#25686c",
		tag = "#85e89d",
		htmlArg = "#fdaeb7",
		param = "#ffab70",
		jsonLabel = "#79b8ff",
	},
	pmenu = {
		select = "#044289",
		bg = "#1f2428",
		sbar = "#32383e",
	},
	git = {
		change = "#79b8ff",
		add = "#34d058",
		delete = "#ea4a5a",
		conflict = "#ffab70",
		ignore = "#6a737d",
	},
	diff = {
		add = "#244032",
		add_fg = "#56d364",
		change = "#341a00",
		change_fg = "#e3b341",
		delete = "#462c32",
		delete_fg = "#f85149",
	},
	gitSigns = {
		change = "#2188ff",
		add = "#28a745",
		delete = "#ea4a5a",
	},
}

return colors