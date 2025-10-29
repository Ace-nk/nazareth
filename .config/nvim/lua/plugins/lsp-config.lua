return {
   {
      "mason-org/mason.nvim",
      opts = {},
      config = function()
         require("mason").setup()
      end
   },
   {
      "mason-org/mason-lspconfig.nvim",
      opts = {
            auto_installed = true
      },
      config = function()
         require("mason-lspconfig").setup({})
      end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         vim.lsp.enable('lua_ls')
         vim.lsp.enable('ts_ls')
         vim.lsp.enable('pyright')
         vim.lsp.enable('jsonls')
         vim.lsp.enable('css_variables')
         vim.lsp.enable('cssmodules_ls')
         vim.lsp.enable('clangd')
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
         vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      end
   }
}
