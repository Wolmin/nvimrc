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

    -- C#
    -- Please note that Mason will most likely complain with the C# LS installation.
    -- If in trouble, install csharp-ls manually, keeping in mind that correct dotnet SDK version needs to be installed.
    -- 0.16.0 is configured for dotnet 8.0
    "csharp_ls@0.16.0",

    "elixirls",
  }
})
