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
	# mv /etc/apt/sources.list /etc/apt/sources_back.list
	# mv ./sources.list /etc/apt/

	# update
	apt update

	# Install
	apt install curl git openssh-server net-tools -y
	git config --global user.email "2036459752@qq.com"
	git config --global user.name "zzpp"


	# Install pip
	 apt install pip -y

	# Install node npm
	curl -sL https://deb.nodesource.com/setup_12.x |  -E bash -
	 apt-get install yarn -y
	 apt-get install -y nodejs
	npm cache clean -f
	 npm install -g n -y
	n stable

	# Install zsh
	 apt install zsh -y

	# Install ohmyzsh
	 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Install oh my tmux
	 apt install tmux -y
	git clone https://github.com/gpakosz/.tmux.git ~/.tmux
	# ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf

	# Plug
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	# Install Python3
	 apt-get install -y python-dev python-pip python3-dev
	 apt-get install -y python3-setuptools
	 easy_install3 pip

	# Install nvim
	 add-apt-repository ppa:neovim-ppa/stable
	 apt-get install -y neovim

	# Install ctag
	 apt-get install ctags -y 

	# Install fzf
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

	# Install ag
	 apt-get install silversearcher-ag -y

	# Install clangd
	#  bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
	 ./clang/llvm.sh 14

	# Install nerdfonts
	 unzip SourceCodePro -d /usr/share/fonts/SourceCodePro

	# Install wakatime
	 pip install wakatime
	git clone https://github.com/sobolevn/wakatime-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/wakatime
	WAKATIME_PATH=`which wakatime`
	ln -s -f $WAKATIME_PATH ~/.wakatime/wakatime-cli

	# Install clang-format
	 apt install clang-format -y

fi

#config

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
