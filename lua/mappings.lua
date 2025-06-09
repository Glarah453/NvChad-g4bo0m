require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- write File
--map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<leader>w", "<cmd> w! <cr>", { desc = "Write File"})

-- quit file
map({ "n", "i", "v" }, "<leader>q", "<cmd> q! <cr>", { desc = "Quit File"})


-- Mover cursor en modo insertar
map({"i"}, "<A-h>","<Left>", { desc = "Move Left in Insert Mode"} )
map({"i"}, "<A-j>","<Down>", { desc = "Move Down in Insert Mode"} )
map({"i"}, "<A-k>","<Up>", { desc = "Move Up in Insert Mode"} )
map({"i"}, "<A-l>","<Right>", { desc = "Move Right in Insert Mode"} )
