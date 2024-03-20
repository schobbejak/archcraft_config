return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pylsp",
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
