#!/bin/bash

pwd=`pwd`

bfirst=0

if [ "$1" == "init" ];then
	echo "first execute"
	bfirst=1
fi

# first execute
if [[ bfirst -eq 1 ]];then

	# 镜像
	mv /etc/apt/sources.list /etc/apt/sources_back.list
	mv ./sources.list /etc/apt/

	update
	sudo apt update

	# Install
	sudo apt install curl git openssh-server net-tools
	git config --global user.email "2036459752@qq.com"
	git config --global user.name "zzpp"


	# Install pip
	sudo apt install pip

	# Install node npm
	curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
	sudo apt-get update && sudo apt-get install yarn
	sudo apt-get install -y nodejs
	npm cache clean -f
	sudo npm install -g n
	n stable

	# Install zsh
	sudo apt install zsh

	# Install ohmyzsh
	sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Install oh my tmux
	sudo apt install tmux
	git clone https://github.com/gpakosz/.tmux.git ~/.tmux
	# ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf

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

	# Install ctag
	sudo apt-get install ctags

	# Install fzf
	sudo apt install fzf

	# Install ag
	sudo apt-get install silversearcher-ag

	# Install clangd
	# sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
	sudo ./clang/llvm.sh 14

	# Install nerdfonts
	sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro

	# Install wakatime
	sudo pip install wakatime
	git clone https://github.com/sobolevn/wakatime-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/wakatime

	# Install clang-format
	sudo apt install clang-format

fi

#config

# mao
cp ./mao ~

# fonts
chmod a+x font/font.sh
./font/font.sh $1

# clangd
chmod a+x clang/clang.sh
./clang/clang.sh $1


# nvim config
chmod a+x nvim/nvim.sh
./nvim/nvim.sh $1

# zsh config
chmod a+x zsh/zsh.sh
./zsh/zsh.sh $1

# tmux config
chmod a+x tmux/tmux.sh
./tmux/tmux.sh $1

# Snippet
chmod a+x snippet/snippet.sh
./snippet/snippet.sh $1
