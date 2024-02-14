return {
	{
		"windwp//nvim-autopairs",
		opts = {
			enable_check_bracket_line = true
		}
	},

	{
		"ethanholz/nvim-lastplace",
		config = true
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		-- stylua: ignore
		keys = {
		  { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
		  { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
		  --{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
		  --{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
		  --{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
		},
	},

	{ 
		"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},

		config = function()	
			local highlight = {
		    "RainbowRed",
		    "RainbowYellow",
		    "RainbowBlue",
		    "RainbowOrange",
		    "RainbowGreen",
		    "RainbowViolet",
		    "RainbowCyan",
			}

			local hooks = require "ibl.hooks"
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
			    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
			    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
			    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
			    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
			    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
			    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			require("ibl").setup { indent = { highlight = highlight } }
		end
	},

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup{}
		end
	},


}
