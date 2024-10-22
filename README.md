# Nvimrc

This is a basic Neovim setup, also used as a sandbox for various testing stuff

## Folder structure

<Some nice tree here>

`after`: Setup your plugins here, require("plugin").setup({}) etc.
`lua/config`: Lazy config
`lua/plugins`: List of installed plugins
`lua/wolmin`: Various editor configs - default editor, lines, remaps etc.

TODO - Fix 
IMPORTANT: remaps are generally inside `lua/wolmin/remap.lua`, with an exception of ToggleTerm remaps - set directly in `lua/plugins/toggleterm.lua` config 
