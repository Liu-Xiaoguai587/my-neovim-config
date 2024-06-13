require("config.keymap")
require("config.vim")
require("config.other")

--plugin package manager
require("config.lazy")

if vim.g.neovide then
  require("config.neovide").init()
end

--theme
--vim.o.background = "drak"
--vim.cmd("colorscheme gruvbox")

--plugins setting
--require("plugin.telescope")
