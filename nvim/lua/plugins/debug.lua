return {

  {
      "mfussenegger/nvim-dap",
      config = function()
          vim.keymap.set("n", "<leader>b<space>", ":DapContinue<CR>")
          vim.keymap.set("n", "<leader>bl", ":DapStepInto<CR>")
          vim.keymap.set("n", "<leader>bj", ":DapStepOver<CR>")
          vim.keymap.set("n", "<leader>bh", ":DapStepOut<CR>")
          vim.keymap.set("n", "<leader>bz", ":ZoomWinTabToggle<CR>")
          vim.keymap.set("n", "<leader>bb", ":DapToggleBreakpoint<CR>")
          vim.keymap.set(
              "n",
              "<leader>bgt",  -- dg as in debu[g] [t]race
              ":lua require('dap').set_log_level('TRACE')<CR>"
          )
          vim.keymap.set(
              "n",
              "<leader>bge",  -- dg as in debu[g] [e]dit
              function()
                  vim.cmd(":edit " .. vim.fn.stdpath('cache') .. "/dap.log")
              end
          )
          vim.keymap.set("n", "<F1>", ":DapStepOut<CR>")
          vim.keymap.set("n", "<F2>", ":DapStepOver<CR>")
          vim.keymap.set("n", "<F3>", ":DapStepInto<CR>")
          vim.keymap.set(
              "n",
              "<leader>b-",
              function()
                  require("dap").restart()
              end
          )
          vim.keymap.set(
              "n",
              "<leader>b_",
              function()
                  require("dap").terminate()
                  require("dapui").close()
              end
          )
      end,
      lazy = true,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function (_, _)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },

  {
    "nvim-neotest/nvim-nio"
  },

  -- A default "GUI" front-end for nvim-dap
  {
      "rcarriga/nvim-dap-ui",
      config = function()
          require("dapui").setup()

    -- Note: Added this <leader>dd duplicate of <F5> because somehow the <F5>
    -- mapping keeps getting reset each time I restart nvim-dap. Annoying but whatever.
    --
    vim.keymap.set(
      "n",
      "<leader>bd",
      function()
        require("dapui").open()  -- Requires nvim-dap-ui

        vim.cmd[[DapContinue]]  -- Important: This will lazy-load nvim-dap
      end
    )
      end,
      dependencies = {
          "mfussenegger/nvim-dap",
          "nvim-neotest/nvim-nio",
          "mfussenegger/nvim-dap-python",  -- Optional adapter for Python
      },
  },

  {
      "Weissle/persistent-breakpoints.nvim",
      config = function()
          require("persistent-breakpoints").setup{
              load_breakpoints_event = { "BufReadPost" }
          }

          vim.keymap.set("n", "<leader>bb", ":PBToggleBreakpoint<CR>")
      end,
  }
}
