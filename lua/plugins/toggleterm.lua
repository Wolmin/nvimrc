return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup{}
      vim.keymap.set({"n", "v"}, "<leader>hh", ":ToggleTerm direction=horizontal<CR>")
      vim.keymap.set({"n", "v"}, "<leader>v", ":ToggleTerm direction=vertical<CR>")
      vim.keymap.set({"n", "v"}, "<leader>hf", ":ToggleTerm direction=float<CR>")
    end
  }
}
