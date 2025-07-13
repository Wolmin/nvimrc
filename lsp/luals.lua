return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonrc" },
  on_init = function()
  end,
  settings = {
    Lua = {
      workspace = {
        userThirdParty = {os.getenv("HOME") .. '.local/share/LuaAddons'},
        checkThirdParty = "Apply",
      },
    }
  }
}
