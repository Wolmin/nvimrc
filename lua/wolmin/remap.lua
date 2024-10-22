vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-c>", "")

vim.keymap.set({"n", "v"}, "<leader>hh", function() require('toggleterm.terminal').Terminal:new({direction = "horizontal"}):toggle() end)

vim.keymap.set("v", "<C-c>", "y")
