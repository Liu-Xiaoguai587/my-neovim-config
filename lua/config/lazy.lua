local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

--plugins list
local plugins = {
  {"ellisonleao/gruvbox.nvim"}, --, priority = 1000, config = true}

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
      "nvim-lua/plenary.nvim",
	  "nvim-tree/nvim-web-devicons",
	  "MunifTanjim/nui.nvim"
	}
  }

}
local opts = {
  install = {
    colorscheme = { "gruvbox" }
  },
}
require("lazy").setup("plugins", opts)
