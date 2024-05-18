#!/bin/sh

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
SETUP_DIR=${SCRIPT_DIR}/tmp

PACKAGE_LIST=${SCRIPT_DIR}/package.list

# Install packages from list
sudo apt update
sudo apt-get install $(cat ${PACKAGE_LIST}) -y

# neovim
git clone https://github.com/neovim/neovim.git ${SETUP_DIR}/neovim
make -C ${SETUP_DIR}/neovim -j CMAKE_BUILD_TYPE=RelWithDebInfo
sudo -C ${SETUP_DIR}/neovim -j make install

# neovim packet manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias vv='nvim' " >> ~/.zshrc


# docker installation
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt install docker-ce docker-ce-cli containerd.io

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
