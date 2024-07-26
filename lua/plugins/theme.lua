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
    --   vim.cmd[[colorscheme tokyonight-moon]]
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
    config = function()
      require('onenord').setup({
        disable = {
          --background = "false",
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
    config = function()
      require("smoothcursor").setup()
    end
  },

  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      -- Ensure termguicolors is enabled if not already
      vim.opt.termguicolors = true
      require('nvim-highlight-colors').setup({
        --render = 'virtual',
        render = 'background',
        --virtual_symbol = '●',
        virtual_symbol = '■',
        --virtual_symbol_position = 'eow',
      })
    end
  },

  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Dismiss All Notifications",
      },
    },
    opts = {
    },
  },

}
