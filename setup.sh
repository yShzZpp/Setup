#!/bin/bash

# 镜像
# mv /etc/apt/sources.list /etc/apt/sources_back.list
# mv ./sources.list /etc/apt/

# update
# sudo apt update
# Install
# sudo apt install curl git openssh-server net-tools

# Install zsh
sudo apt install zsh
cp ./.zshrc ~

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./bullet-train.zsh-theme ~/.oh-my-zsh/custom/themes/ 

# Install oh my tmux
./tmux.sh
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
# ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
cp ./.tmux.conf ~
cp ./.tmux.conf.local ~
# Plug
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



# Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip

# Install nvim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim
cp ./nvim ~/.config/ -rf

# Install ctag
sudo apt-get install ctags

# Install clangd
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

# Install wakatime
sudo pip install wakatime
cd git clone https://github.com/sobolevn/wakatime-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/wakatime 













