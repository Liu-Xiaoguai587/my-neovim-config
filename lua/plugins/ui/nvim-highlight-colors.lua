return {
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
}
