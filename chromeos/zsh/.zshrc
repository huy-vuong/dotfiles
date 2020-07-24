# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/${USER}/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="${PATH}:/home/silare/Development/flutter/bin"

git config --global user.name 'Huy Vuong'
git config --global user.email 'huy-vuong@users.noreply.github.com'
export VISUAL='/usr/local/bin/code-insiders --wait'
export EDITOR="$VISUAL"

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

export PS1="%{$fg[green]%}%n@%m%{$reset_color%}%  %{$fg[blue]%}%1~%{$reset_color%} %{$fg[green]%}$%{$reset_color%} "
export SUDO_PS1="%{$fg[red]%}%n@%m%{$reset_color%}%  %{$fg[blue]%}%1~%{$reset_color%} %{$fg[red]%}#%{$reset_color%} "
export RPS1=" %{$fg[yellow]%}\$vcs_info_msg_0_ %{$fg[magenta]%}%D{%Y-%m-%d} %D{%H:%M:%S}%{$reset_color%}"
export SUDO_RPS1=" %{$fg[blue]%}%~%{$reset_color%}"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Navigation
alias l='exa -lh --git'
alias ll='exa -lah --git'
alias l1='exa -1ah'
alias fd='fdfind'

# Git
alias gs='git status'
alias gd='git diff'
alias gc='git diff --cached'
alias gl='git log'
alias gw='git show'
alias gp='git pull'

# Shortcuts
alias ding='echo -en "\a"'
alias doc='cd ~/Documents/'
alias dl='cd ~/Downloads/'
dv () {
    if (( ${+1} )); then
        cd ~/Development/${1}
    else
        cd ~/Development
    fi
}

# Z Shell
alias z='source ~/.zshrc'
alias zz='code ~/.zshrc; source ~/.zshrc'

# Editors
alias code='code-insiders'
alias e='emacs'

# Search
alias r='rg'
alias ri='rg -i'

# Android
alias adb='~/Library/Android/sdk/platform-tools/adb'
alias fastboot='~/Library/Android/sdk/platform-tools/fastboot'

# Flutter
alias f='flutter'

# Jupyter
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=ipython3
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
alias python='python3'
alias jupyter='~/.local/bin/jupyter'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
