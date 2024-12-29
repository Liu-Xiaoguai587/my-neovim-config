return {
  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   vim.cmd("colorscheme gruvbox")
    -- end

  },

  {
    "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    -- config = function()
    --   --vim.cmd[[colorscheme tokyonight]]
    --   vim.cmd[[colorscheme tokyonight-night]]
    -- end
  },

  {
    "luisiacc/gruvbox-baby",
    -- config = function ()
    -- vim.g.gruvbox_baby_background_color = "dark"
    -- vim.g.gruvbox_baby_transparent_mode = "true"
    -- vim.cmd("colorscheme gruvbox-baby")
    -- end
  },

  {
    "rmehri01/onenord.nvim",
    -- config = function()
    --   require('onenord').setup({
    --     disable = {
    --       background = "false",
    --     }
    --   })
    -- end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      require("catppuccin").setup({
        -- latte, frappe, macchiato, mocha
        flavour = "auto",

        transparent_background = true
      })

      vim.cmd.colorscheme "catppuccin"
    end
  }

}
