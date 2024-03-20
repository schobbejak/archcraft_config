return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "python-lsp-server",
        "lua-language-server",
      }
    }
  },

  {
    "williamboman/mason-lspconfig.nvim"
  },

  {
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
      end,
    },
  }
}
