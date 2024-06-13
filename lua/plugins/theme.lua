return {
	{
		"ellisonleao/gruvbox.nvim",
		--config = function ()
		--	vim.cmd("colorscheme gruvbox")
		--end

	},

	{
		"luisiacc/gruvbox-baby",
		--config = function ()
		--	vim.g.gruvbox_baby_background_color = "dark"
		--	vim.g.gruvbox_baby_transparent_mode = "true"
		--	vim.cmd("colorscheme gruvbox-baby")
		--end
	},

	{
		"rmehri01/onenord.nvim",
		config = function ()
			require('onenord').setup({
				disable = {
					background = "false",
				}
			})
		end
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },

		config = function()
			require('lualine').setup {
				--onenord setting
				theme = 'onenord'
			}
		end
	},

	{
		'gen740/SmoothCursor.nvim',
		config = function ()
			require("smoothcursor").setup()
		end
	}
}
