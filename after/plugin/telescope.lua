local builtin = require('telescope.builtin')

require("telescope").setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
    },
    mappings = {
      n = {
        ["q"] = require("telescope.actions").close,
      },
    },
    file_ignore_patterns = { "node_modules" },
  },
})

vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope find old files' })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
