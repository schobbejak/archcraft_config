require "nvchad.mappings"

-- add yours here

local unmap = vim.keymap.del
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Unmap buffer new and map to N
unmap("n", "<leader>b")
