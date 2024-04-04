require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- opt.foldcolumn = "0"
-- opt.foldtext = ""

-- Minimum level of fold closed by default
opt.foldlevel = 99

-- Upon editing a buffer what level of folds should be open by default
opt.foldlevelstart = 1

-- Limits how deep code gets folded
opt.foldnestmax = 2

-- Tabs
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
