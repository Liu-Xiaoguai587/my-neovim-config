--local configs = require("nvim-treesitter.configs")

--require("nvim-treesitter.configs").setup{
--  ensure_installed = { "c", "cpp" ,"lua", "rust" },
--
--  --sync_install = false,
--  --auto_install = false,
--  --ignore_install = {"javascript"},
--
--  highlight = { enable = true },
--  indent = { enable = true }
--
--}

return {
	"nvim-treesitter/nvim-treesitter",
  	main = "nvim-treesitter.configs",
  	build = ":TSUpdate",
  	opts = {
		ensure_installed = { "c", "cpp" ,"lua", "rust" },
		highlight = { enable = true },
		indent = { enable = true }
  	},
	--rainbow = {
	--	enable = true,
	--	query = "rainbow-parens",
	--	--strategy = require("ts-rainbow").strategy.global,
	--}
}
