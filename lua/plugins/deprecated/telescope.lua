return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = { 
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make"
		}
	},
	config = function()
		require('telescope').setup {
			extensions = {
				fzf = {
					fuzzy = true,                    -- false will only do exact matching
		    	 	override_generic_sorter = true,  -- override the generic sorter
		    	 	override_file_sorter = true,     -- override the file sorter
		    	 	case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
		    	 	-- the default case_mode is "smart_case"
				}
			},
			-- pickers = {
			--  find_files = {theme = "cursor"}
			-- }
		}

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep)
		vim.keymap.set('n', '<leader>fb', builtin.buffers)

		require("telescope").setup {
		  pickers = {
		    find_files = {theme = "cursor"}
		  }
		}
	end

}
