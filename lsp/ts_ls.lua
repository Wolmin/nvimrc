return {
  init_options = {
    hostInfo = "neovim",
    preferences = {
      disableSuggestions = true,
    },
  },
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
}
