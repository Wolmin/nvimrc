require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    -- GO
    "gopls",
    "golangci_lint_ls",

    -- LUA
    "lua_ls",

    -- TYPESCRIPT/REACT/ETC
    "ts_ls",
    "cssmodules_ls",
    "cssls",

    -- PYTHON
    "pyright",

    -- RUST
    "rust_analyzer",
  }
})
