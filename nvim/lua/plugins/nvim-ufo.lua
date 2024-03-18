return {
    {
        'kevinhwang91/nvim-ufo',
        dependencies = "kevinhwang91/nvim-ufo",
        event = "VimEnter",
        init = function()
            vim.opt.foldlevel = 99
            vim.opt.foldlevelstart = 99
        end,
    }
}
