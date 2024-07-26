return {
  {
    -- Usage:
    --   add:    ys{motion}{char}
    --   delete: ds{char}
    --   change: cs{targe}{replacement}
    --
    -- ( -> ( {char} )
    -- ) -> ({char})
    --
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    --config = function ()
    --  vim.keymap.set("v", "C-/", "gc")
    --end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        insert_mappings = false,
        direction = 'float',
      })
    end
  },

}
