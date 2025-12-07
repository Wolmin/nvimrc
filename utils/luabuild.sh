#/bin/bash

set -e

# Directory where you want LuaLS installed
INSTALL_DIR="$HOME/.local/share/nvim/mason/packages/lua-language-server"

# Remove any previous installation
rm -rf "$INSTALL_DIR"

# Clone the LuaLS repo
git clone https://github.com/LuaLS/lua-language-server.git "$INSTALL_DIR"

cd "$INSTALL_DIR"

# Initialize submodules
git submodule update --init --recursive

# Build luamake (required for building LuaLS)
cd 3rd/luamake
./compile/install.sh
cd ../..

# Build the Lua Language Server
./3rd/luamake/luamake rebuild

# Verify the build
"$INSTALL_DIR/bin/lua-language-server" --version

echo "Lua Language Server has been built successfully in $INSTALL_DIR"

