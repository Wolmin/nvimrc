return {
  "goolord/alpha-nvim",
  -- dependencies = { 'echasnovski/mini.icons' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local theme = require("alpha.themes.dashboard")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    require("alpha").setup(
      theme.config
    )
  end,
}
