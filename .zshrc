# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git textmate autojump brew osx)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/Users/dorayo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/usr/local/mysql/bin"
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=$PATH:/Applications/ejabberd-14.07/bin
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

## -----------------------
## -- 2) Set up aliases --
## -----------------------

# 2.1) Safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# 2.2) Listing, directories, and motion
alias ll="ls -alrtF"
alias la="ls -A"
alias l="ls -CF"
alias m='less'
# no need for zsh
#alias ..='cd ..'
#alias ...='cd ..;cd ..'
alias qy='cd /Users/dorayo/qingyun/'
alias s1='cd /Users/dorayo/qingyun/备课-第一阶段课程'
alias s2='cd /Users/dorayo/qingyun/备课-第二阶段课程'
alias s3='cd /Users/dorayo/qingyun/备课-第三阶段课程'
alias md='mkdir'
alias cl='clear'
alias du='du -ch -d 1'
#alias treeacl='tree -A -C -L 2'

# 2.3) Text and editor commands
alias mou='/Applications/Mou.app/Contents/MacOS/Mou'
alias emacs='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2'
alias em='emacs -nw'     # No X11 windows
alias eqq='emacs -nw -Q' # No config and no X11
export EDITOR='emacs'
export VISUAL='emacs'
alias -s html=mate
alias -s py=em
alias -s js=em
alias -s c=em
alias -s java=em
alias -s txt=em

# 2.4) grep options
export GREP_OPTIONS='--color=auto'

# 2.5) terminal options
export CLICOLOR=1
export CLICOLORS=gxfxcxdxbxegedabagacad

# 2.6) misc
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


## -------------------------
## -- 3) Set up for Part3 --
## -------------------------

# 3.1) loads nvm for node.js
[ -s "/Users/`users`/.nvm/nvm.sh" ] && . "/Users/`users`/.nvm/nvm.sh" # This loads nvm


# 3.2) Qu Jing iTerm & Terminal Setup Script
# version 0.4
# Felix Ding
# Nov 18, 2014
#
function start_qujing {
  export http_proxy='http://theironislands.f.getqujing.net:49320'
  export HTTPS_PROXY='http://theironislands.f.getqujing.net:49320'
}
#

# 3.3) linode shadowsocks
# export http_proxy="http://127.0.0.1:1080"
#export https_proxy="http://127.0.0.1:1080"
#alias curl="curl -x http://127.0.0.1:1080"
