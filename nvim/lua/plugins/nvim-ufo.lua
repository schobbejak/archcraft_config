return {

  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async', 'neovim/nvim-lspconfig'},
    --stylua: ignore
    keys = { 
      { "zR", function() require("ufo").openAllFolds() end, desc = "Open All Folds", },
      { "zM", function() require("ufo").closeAllFolds() end, desc = "Close All Folds", },
    },
    opts = {},
    config = function(_, opts)
      require("ufo").setup(opts)
    end,
  },


}
