# 1. Build
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage

chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage


# 2. Global
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
## .bashrc
```
export PATH="$PATH:/opt/nvim/"
```
change default config file to this repo
# 3. Neovim Customize
git clone https://github.com/junjun5/neovim-config.git
mv 
### Depending on situation, no 
```
locale -a
# if there is no locale -a
sudo apt-get update
sudo apt-get install language-pack-ja
```
### Install Packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
### Install font
install one font from following site
https://www.nerdfonts.com/font-downloads
[windows and alacritty]
open font file and press install button
set toml file to alacritty config file
