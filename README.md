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

## Dependencies

There are multiple dependencies for different working envs. Those include:
- `go` SDK for Golang
- `npm` and `yarn` for JS/TS
- `cargo` for Rust
- `ripgrep` for telescope live grep

Those are pretty straightforward: just head to install page for your environment and follow instructions.  
For image preview, see [media_files](https://github.com/nvim-telescope/telescope-media-files.nvim) plugin extension.
Other than those, there also dependencies for certain plugins, the most notable being the [image.nvim](https://github.com/3rd/image.nvim) - please visit the plugin doc for more details.

### Love2D / other addons
For a pleasant Love2D experience, install the following addon into the `~/.local/share/LuaAddons`:

`git clone https://github.com/LuaCATS/love2d.git`

## Clipboard

Just install xclip for native clipboard support:
```sh
$ sudo apt install xclip
```
