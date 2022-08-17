local db = require('dashboard')

local header = {
     '',
     '',
     '',
	 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	 '                                                       ',
	 '               [  Author: El Albatross  ]              ',
     '',
     '',
}


db.custom_header = header
db.custom_center = {
	{
		icon = "  ",
		desc = "New file                               ",
		shortcut = ":enew",
		action = "enew",
	},
	{
		icon = "  ",
		desc = "Find file                              ",
		shortcut = "SPC s f",
		action = "Telescope find_files hidden=true no_ignore=true",
	},
	{
		icon = "  ",
		desc = "Recently opened                        ",
		shortcut = "SPC f h",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Update plugins                         ",
		shortcut = ":PlugUpdate",
		action = "PlugUpdate",
	},
	{
		icon = "  ",
		desc = "Go to mark                             ",
		shortcut = "SPC s m",
		action = "Telescope marks",
	},
	{
		icon = "  ",
		desc = "Close neovim                           ",
		shortcut = ":qa!",
		action = "qa!",
	},
}

local map = vim.api.nvim_set_keymap

map("n", "<leader>fh", "<cmd>Telescope oldfiles<cr>", {silent = true , noremap=true})
map("n", "<leader>sm", "<cmd>Telescope marks<cr>", {silent = true , noremap=true})
