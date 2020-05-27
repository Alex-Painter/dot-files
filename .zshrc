# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/alexpainter/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git vi-mode fasd
)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zshsource="source ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias tmuxconfig="nvim ~/.tmux.conf"
alias tmuxsource="tmux source ~/.tmux.conf"
alias stopContainers="docker stop $(docker ps -a -q)"
alias removeContainers="docker rm $(docker ps -a -q)"

alias java13="/Users/alexpainter/Downloads/jdk-13.0.1.jdk/Contents/Home/bin/java"
alias java8="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java"

alias mvn='nocorrect mvn'

alias setnvm="nvm use $(cat .nvmrc)"

alias kprod="gcloud container clusters get-credentials main-cluster --zone europe-west1-b --project vivacity-infrastructure"
alias kstaging="gcloud container clusters get-credentials staging-cluster --zone europe-west1-b --project vivacity-infrastructure"
alias kdev="gcloud container clusters get-credentials dev-cluster --zone europe-west1-b --project vivacity-infrastructure"

alias k8svpndev="sudo openvpn /Users/alexpainter/secrets/OpenVPN-client-alex.ovpn"
alias k8svpnstaging="sudo openvpn /Users/alexpainter/secrets/OpenVPN-client-alex-staging.ovpn"
alias k8svpnprod="sudo openvpn /Users/alexpainter/secrets/OpenVPN-client-alex-prod.ovpn"
alias officevpn="sudo openvpn /Users/alexpainter/secrets/OpenVPN-client-alex-office.ovpn"

alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# NVM
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Google SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexpainter/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alexpainter/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexpainter/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alexpainter/Documents/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"

# add kitty completion
autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Go stuff
export GOPATH=/Users/alexpainter/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# openvpn
export PATH="/usr/local/Cellar/openvpn/2.4.8/sbin:$PATH"

# Terraform
export GOOGLE_APPLICATION_CREDENTIALS="/Users/alexpainter/Documents/workspace/atrocity/secrets/atrocity-management-99819986c9ef.json"
export TF_VAR_terraform_state_encryption_key="$(cat /Users/alexpainter/Documents/workspace/atrocity/secrets/tfstate_secret.key)"
# -backend-config=encryption_key="$(cat /Users/alexpainter/Documents/workspace/atrocity/secrets/tfstate_secret.key)"
