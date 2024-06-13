local M = {}

function M.init()
  M.config()
end

function M.config()
  vim.o.guifont = "FantasqueSansM Nerd Font Mono:h18"

  vim.g.neovide_rememver_window_size = true

  --vim.g.neovide_cursor_vfx_mode = "railgun"

  require('onenord').setup({
    disable = {
      background = true,
    }
  })
end

return M
