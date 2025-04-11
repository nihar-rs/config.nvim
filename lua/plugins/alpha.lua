return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"	  	▒█░▒█ ░▒█░░ ▒█▀█▀█     ",
			"	  	▒█░▒█ ░▒█░░ ▒█▒█▒█     ",
			"	  	░▀▄▄█ ░▒█░░ ▒█ ░▒█     ",
			"───── VIM: Press Start ─────",
		}

		dashboard.section.buttons.val = {
			dashboard.button("a", "  New file", ":enew<CR>"),
			dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
			dashboard.button("g", "  Live grep", ":Telescope live_grep<CR>"),
			dashboard.button("h", "  Find Help", ":Telescope help_tags<CR>"),
			dashboard.button("t", "  File explorer", ":Neotree<CR>"),
			dashboard.button("q", "  Quit", ":qa<CR>"),
		}

		dashboard.section.footer.val = {
			"▌│█║▌║▌║ Hello From NIHAR ▌║▌║█│▌",
		}
		alpha.setup(dashboard.opts)
	end,
}

--     dashboard.section.header.val = {
--         [[              __                    ]],
--         [[      __  __ /\_\    ___ ___        ]],
--         [[     /\ \/\ \\/\ \  / __` __`\      ]],
--         [[     \ \ \_/ |\ \ \/\ \/\ \/\ \     ]],
--         [[      \ \___/  \ \_\ \_\ \_\ \_\    ]],
--         [[       \/__/    \/_/\/_/\/_/\/_/    ]],
-- }
