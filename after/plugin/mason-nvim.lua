require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    -- GO
    "gopls",

    -- LUA
    "lua_ls",

    -- TYPESCRIPT/REACT/ETC
    "ts_ls",
    "cssmodules_ls",
    "cssls",

    -- HTML
    "html",

    -- PYTHON
    "pyright",

    -- RUST
    "rust_analyzer",
  }
})
