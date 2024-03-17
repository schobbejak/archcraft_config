return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  {
    'kevinhwang91/nvim-ufo',
    requires= 'kevinhwang91/promise-async'
  },

  {
    'wakatime/vim-wakatime',
    lazy = false
  }
}
