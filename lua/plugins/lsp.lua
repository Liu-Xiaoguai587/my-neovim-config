return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig" },
  },


  --config = function()
  --  local servers = {
  --    clangd = {},
  --    rust_analyzer = {},
  --    lua_ls = {
  --      workspace = { checkThirdParty = false },
  --      telemetry = { enable = false },
  --    }
  --  }

  --  vim.api.nvim_create_autocmd('LspAttach', {
  --    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  --    callback = function(ev)
  --      -- Enable completion triggered by <c-x><c-o>
  --      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

  --      -- Buffer local mappings.
  --      -- See `:help vim.lsp.*` for documentation on any of the below functions
  --      local opts = { buffer = ev.buf }
  --      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  --      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  --      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  --      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  --      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  --      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  --      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  --      vim.keymap.set('n', '<space>wl', function()
  --        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  --      end, opts)
  --      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
  --      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
  --      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
  --      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  --      vim.keymap.set('n', '<space>f', function()
  --        vim.lsp.buf.format { async = true }
  --      end, opts)
  --    end,
  --  })

  --  require("mason").setup()
  --  require("mason-lspconfig").setup({
  --    ensure_installed = vim.tbl_keys(servers),
  --    handlers = {
  --      function(server_name)
  --        require("lspconfig")[server_name].setup {
  --          settings = servers[server_name],
  --          on_attach = on_attachh,
  --          capabilities = capabilities,

  --          --  disable javascript suggest message like:
  --          --      "File is a CommonJS module;
  --          --      it may be converted to an ES module."
  --          -- init_options = {
  --          --   preferences = {
  --          --     disableSuggestions = true,
  --          --   }
  --          -- }
  --        }
  --      end,
  --    }
  --  })
  --end


}
