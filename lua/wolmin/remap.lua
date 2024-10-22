vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>hh", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set({"n", "v"}, "<leader>v", ":ToggleTerm direction=vertical<CR>")
vim.keymap.set({"n", "v"}, "<leader>hf", ":ToggleTerm direction=float<CR>")
