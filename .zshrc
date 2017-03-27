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

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/Users/`users`/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/usr/local/mysql/bin"
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
export SSH_KEY_PATH="~/.ssh/dsa_id"

# python
export PYTHONPATH="/Users/`users`/codes/python/codes"

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
alias md='mkdir'
alias cl='clear'
alias du='du -ch -d 1'
#alias treeacl='tree -A -C -L 2'

# 2.3) Text and editor commands
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
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

# 2.n) misc
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


## -------------------------
## -- 3) Set up for Part3 --
## -------------------------

# 3.1) loads nvm for node.js
[ -s "/Users/`users`/.nvm/nvm.sh" ] && . "/Users/`users`/.nvm/nvm.sh" # This loads nvm

# 3.2) Proxy Setup Script
# version 0.2
# Dorayo
# Feb 10, 2017
# 
alias pon='export http_proxy=http://duotai:pjqhwzGRlc@westin.h.xduotai.com:11794;export https_proxy=$http_proxy'
alias poff='unset http_proxy;unset https_proxy'
