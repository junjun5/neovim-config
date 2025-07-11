# 1. Build
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage


# 2. Global
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
## .bashrc
export PATH="$PATH:/opt/nvim/"

