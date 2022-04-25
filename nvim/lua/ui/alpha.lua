local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

  [[________     _________ ]],
  [[\______ \   /   _____/ ]],
  [[ |    |  \  \_____  \  ]],
  [[ |    `   \ /        \]],
  [[/_______  //_______  / ]],
  [[        \/         \/  ]],
}
dashboard.section.buttons.val = {
	dashboard.button("n", "  New", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
	dashboard.button("s", "  Search", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit", ":qa<CR>"),
}
alpha.setup(dashboard.opts)
