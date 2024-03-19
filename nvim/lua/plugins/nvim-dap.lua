return {
    {
        {
            "mfussenegger/nvim-dap",
            config = function()
                require("configs.dap")
            end,
        },

        {
            "rcarriga/nvim-dap-ui",
            config = function()
                require("dapui").setup()
            end,
            requires = { "mfussenegger/nvim-dap" },
        },

        {
            "theHamsta/nvim-dap-virtual-text",
            config = function()
                require("nvim-dap-virtual-text").setup()
            end,
            requires = { "mfussenegger/nvim-dap" },
        },
    }
}
