# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# configuration
#
# find 无法使用通配符
setopt no_nomatch

# variable
#
compile_json="-DCMAKE_EXPORT_COMPILE_COMMANDS=1"

# environment
#
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=/usr/bin/nvim
export PATH="$PATH:/home/zzpp/ybin"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH_WAKATIME_PROJECT_DETECTION=true
export ZSH_WAKATIME_BIN=~/.wakatime/wakatime-cli


# nickname
#
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="source ~/.oh-my-zsh"
alias stnginx="sudo /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf"
alias renginx="sudo /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf -s reload"
alias nginxconfig="nvim /usr/local/nginx/conf/nginx.conf"
alias cdgit="cd ~/mygit/"
alias cdcan="cd ~/mygit/Company_Project/candela/project/"
alias cdhisi="cd /home/Hisilicon/"

# alias nvim='TERM=xterm-256color /bin/nvim'
alias isaigu="ssh isaiguserver250@n3879m4762.zicp.vip -p 21068"
alias tb="trans -b"
alias tz="trans :zh"
alias tbz="trans -b :zh"

alias tn="tmux -2 new -t"
alias tk="tmux kill-session -t"
alias tka="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"
alias tls="tmux list-sessions "
alias tlw="tmux list-windows"
alias tt="tmux -2 at -t"

alias mountShare='sudo mount -t vboxsf LinuxShare ~/share'
alias cdshare='cd ~/share'

# zsh 配置
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# 主题
# ZSH_THEME="agnoster"
ZSH_THEME="bullet-train"		#https:#https://github.com/caiogondim/bullet-train.zsh
BULLETTRAIN_PROMPT_ORDER=(
	time
	context
	dir
	git
	cmd_exec_time
	aws
)

#用户名和主机
BULLETTRAIN_CONTEXT_BG="#8a8a8a"		#灰

#时间
BULLETTRAIN_TIME_BG="#9ed088"			#绿

#git
BULLETTRAIN_GIT_BG="#D5D45F"			#黄
BULLETTRAIN_GIT_DELETED="%F{red} -%F{black}"				#🐍
BULLETTRAIN_GIT_MODIFIED="%F{blue} M%F{black}"
BULLETTRAIN_GIT_UNTRACKED="%F{yellow} Un%F{black}"

BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR="#F9A094"		#红
# BULLETTRAIN_GIT_ADDED     "%F{green}✚%F{black}"  Icon for added     files on stage
# BULLETTRAIN_GIT_MODIFIED  "%F{blue}✹%F{black}"   Icon for modified  files
# BULLETTRAIN_GIT_DELETED   "%F{red}✖%F{black}"    Icon for delete    files on stage
# BULLETTRAIN_GIT_UNTRACKED "%F{yellow}✭%F{black}" Icon for untracked files

#进程运行时间
BULLETTRAIN_EXEC_TIME_ELAPSED=0;
BULLETTRAIN_EXEC_TIME_BG="#BFC1D9"		#蓝灰


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting wakatime)

source $ZSH/oh-my-zsh.sh

# ROS
# type ros2 1>/dev/null 2>/dev/null
if [ -d /opt/ros/galactic ];then
	echo "source ros"
	source /opt/ros/galactic/setup.zsh
	source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
fi

# candela
if [ -d ~/candelagit/shells ];then
	export PATH=~/candelagit/shells:$PATH
fi






# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

MEMORY=`free -mh | grep "Mem" | awk '{print "used:",$3,"/",$2,"( free: ",$4,")  "}'`
MEM_USAGE=`free -m | grep "Mem" | awk '{printf("%3.1f%%", (($3/$2)*100))}'`
# - IP..................: `hostname -I`
echo "
========================================================
- Release.............: `cat /etc/issue|awk '{print $1,$2}'|tr -s '\n' ' '`
- Kernel..............: `uname -r`
- Hostname............: `uname -n`
- Username............: `whoami`
- Login Users.........: Total `users | wc -w` user(s)
========================================================
- Memory..............: $MEMORY
- Memory usage........: $MEM_USAGE
========================================================"
cat ~/mao

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

