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

}
-- local opts = {
--   install = {
--     colorscheme = { "gruvbox" }
--   },
-- }
--require("lazy").setup("plugins", opts)
--require("lazy").setup("plugins.ui", opts)
require("lazy").setup({
  spec = {
    {import = "plugins.lsp"},
    {import = "plugins.ui"},
    {import = "plugins.utils"}
  }
})
--require("lazy").setup("plugins.lsp", opts)
--require("lazy").setup("plugins.utils", opts)
