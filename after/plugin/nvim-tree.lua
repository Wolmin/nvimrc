--- DECORATOR
---Create your decorator class
local TestFileDecorator = require("nvim-tree.api").decorator.UserDecorator:extend()

---Mandatory constructor  :new()  will be called once per tree render, with no arguments.
function TestFileDecorator:new()
  self.enabled         = true
  self.highlight_range = "all"
  -- self.icon_placement  = "signcolumn"

  -- create your icon once, for convenience
  -- self.my_icon         = { str = "I", hl = { "MyIcon" } }

  -- Define the icon sign only once
  -- Only needed if you are using icon_placement = "signcolumn"
  self:define_sign(self.my_icon)
end

---Override node icon
-- function TestFileDecorator:icon_node(node)
--   if node.name == "example" then
--     return self.my_icon
--   else
--     return nil
--   end
-- end

---Return one icon for DecoratorIconPlacement
-- function TestFileDecorator:icons(node)
--   if node.name == "example" then
--     return { self.my_icon }
--   else
--     return nil
--   end
-- end

---Exactly one highlight group for DecoratorHighlightRange
function TestFileDecorator:highlight_group(node)
  if node.name == "example" then
    return "NvimTreeWindowPicker"
  else
    return nil
  end
end

--- Setup Plugin
require("nvim-tree").setup({
  filters = { dotfiles = false },
  disable_netrw = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    adaptive_size = true,
    preserve_window_proportions = true,
  },
  renderer = {
    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = { unmerged = "" },
      },
    },
    decorators = { "Git", "Open", "Hidden", "Modified", "Bookmark", "Diagnostics", "Copied", "Cut", TestFileDecorator },
  },
})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
