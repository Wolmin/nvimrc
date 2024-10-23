function Colors(color)
  color = color or "base16-onedark"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })     -- Non-current windows
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })   -- Sign column
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })   -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" }) -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })    -- Vertical split
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })  -- End of buffer characters
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })       -- Line numbers
end

Colors()
