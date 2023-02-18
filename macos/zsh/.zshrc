# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/${USER}/.oh-my-zsh

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

export GOPATH="${HOME}/Development/go"

export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.6/bin"
export PATH="${PATH}:${GOPATH}/bin"
export PATH="${PATH}:${HOME}/Development/flutter/bin"
export PATH="${PATH}:${HOME}/Development/textutils"

export GIT_CONFIG_USER_EMAIL='huy-vuong@users.noreply.github.com'
git config --global user.name 'Huy Vuong'
git config --global user.email ${GIT_CONFIG_USER_EMAIL}
export VISUAL='/usr/local/bin/code --wait'
export EDITOR="$VISUAL"

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

export PS1="%{$fg[green]%}%n@%m%{$reset_color%}%  %{$fg[blue]%}%1~%{$reset_color%} %{$fg[green]%}$%{$reset_color%} "
export SUDO_PS1="%{$fg[red]%}%n@%m%{$reset_color%}%  %{$fg[blue]%}%1~%{$reset_color%} %{$fg[red]%}#%{$reset_color%} "
export RPS1=" %{$fg[yellow]%}\$vcs_info_msg_0_ %{$fg[magenta]%}%D{%Y-%m-%d} %D{%H:%M:%S}%{$reset_color%}"
export SUDO_RPS1=" %{$fg[yellow]%}\$vcs_info_msg_0_ %{$fg[magenta]%}%D{%Y-%m-%d} %D{%H:%M:%S}%{$reset_color%}"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Navigation
alias l='exa -lh'
alias lt='exa -lhT'
alias ltt='exa -T'
alias ll='exa -lah'
alias llt='exa -lahT'
alias lltt='exa -aT'
alias l1='exa -1'

# Git
alias gs='git status'
alias gd='git diff'
alias gc='git diff --cached'
alias gl='git log'
alias gll='git log --pretty=oneline'
alias gw='git show'
alias gp='git pull'

# npm
alias ni='npm i'
alias nd='npm i --save-dev'
alias ng='npm i -g'
alias no='npm outdated'
alias ns='npm start'
alias nt='npm test'
alias na='npm run actions'
alias nb='npm run build'

# Go
unalias gg
gg () {
    make ${1} && ./${1}
}

# Rust
export MACOSX_DEPLOYMENT_TARGET=10.7
alias ct='cargo test'
alias cr='cargo run --'
alias cb='cargo build'
alias cf='cargo fmt'
alias ca='cargo add'
alias cad='cargo add -D'
alias co='cargo outdated'

# Weather
alias wt="curl -s 'wttr.in' | grep -v 'New feature' | grep -v 'Follow'"

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
alias e='emacs'

# Search
alias a='ag'
alias ai='ag -i'
alias r='rg'
alias ri='rg -i'

# Android
alias adb='~/Library/Android/sdk/platform-tools/adb'
alias fastboot='~/Library/Android/sdk/platform-tools/fastboot'

# Flutter
alias f='flutter'
alias fa='flutter analyze'
alias fat='flutter analyze && flutter test'
alias fbd='flutter build apk --debug'
alias fp='flutter pub'
alias fpa='flutter pub add'
alias fpd='flutter pub add --dev'
alias fpg='flutter pub get'
alias fpo='flutter pub outdated'
alias fpb='flutter pub run build_runner build --delete-conflicting-outputs'
alias ft='flutter test'
export SDK_REGISTRY_TOKEN=`cat ~/.mapbox-sol`

# Maven / Gradle
alias mvnw='./mvnw'
alias gradlew='./gradlew'

# Photography
alias rmexif='exiftool -all='
alias rmgeo='exiftool -geotag='
alias rmexifs='for i in *.jpg; do echo "Processing $i"; exiftool -all= "$i"; done'
alias rmgeos='for i in *.jpg; do echo "Processing $i"; exiftool -geotag= "$i"; done'
reject () {
    mkdir -p Reject/
    pbpaste | cut -c 7- | sed 's/^/mv DSC0/' | sed 's/$/.* Reject\//' | sh
    echo \"Moved `find Reject | grep -c Reject/` files to Reject/\"
}
rejectn () {
    mkdir -p Reject/
    pbpaste | cut -c 7- | sed 's/^/mv DSC_/' | sed 's/$/.* Reject\//' | sh
    echo \"Moved `find Reject | grep -c Reject/` files to Reject/\"
}
pick () {
    mkdir -p Pick/
    pbpaste | cut -c 7- | sed 's/^/mv DSC0/' | sed 's/$/.* Pick\//' | sh
    echo \"Moved `find Pick | grep -c Pick/` files to Pick/\"
}
pickn () {
    mkdir -p Pick/
    pbpaste | cut -c 7- | sed 's/^/mv DSC_/' | sed 's/$/.* Pick\//' | sh
    echo \"Moved `find Pick | grep -c Pick/` files to Pick/\"
}
unflagged () {
    mkdir -p Unflagged/
    ls -1 | grep '^DSC' | sed 's/^/mv /' | sed 's/$/ Unflagged\//' | sh
    echo \"Moved `find Unflagged | grep -c Unflagged/` files to Unflagged/\"
}
ap () {
    YEAR=`date +%Y`
    DATE=`date +%Y%m%d`
    PHOTO_PATH=`ls -rt -d -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/* | sort | grep "^/Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/${DATE}" | tail -n 1`
    PHOTO_BASE=`ls -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG | sort | grep "^${DATE}" | tail -n 1`
    echo ${PHOTO_PATH}
    echo ${PHOTO_BASE}
    cp ${PHOTO_PATH} public/images/photos/${PHOTO_BASE}
    git add data/images/`echo ${PHOTO_BASE} | cut -c1-22`.json
    git add public/images/photos/${PHOTO_BASE}
    mogrify -resize '640>' -path public/images/sizes/640 ${PHOTO_PATH}
    git add public/images/sizes/640/${PHOTO_BASE}
    mogrify -resize '800>' -path public/images/sizes/800 ${PHOTO_PATH}
    git add public/images/sizes/800/${PHOTO_BASE}
    mogrify -resize '1024>' -path public/images/sizes/1024 ${PHOTO_PATH}
    git add public/images/sizes/1024/${PHOTO_BASE}
    npm run descriptors
    git add photos.json
}
apns () {
    YEAR=`date +%Y`
    DATE=`date +%Y%m%d`
    PHOTO_PATH=`ls -rt -d -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/* | sort | grep "^/Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/${DATE}" | tail -n 1`
    PHOTO_BASE=`ls -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG | sort | grep "^${DATE}" | tail -n 1`
    echo ${PHOTO_PATH}
    echo ${PHOTO_BASE}
    cp ${PHOTO_PATH} public/images/photos/${PHOTO_BASE}
    git add data/images/`echo ${PHOTO_BASE} | cut -c1-22`.json
    git add public/images/photos/${PHOTO_BASE}
    mogrify -resize '640>' -path public/images/sizes/640 ${PHOTO_PATH}
    git add public/images/sizes/640/${PHOTO_BASE}
    mogrify -resize '800>' -path public/images/sizes/800 ${PHOTO_PATH}
    git add public/images/sizes/800/${PHOTO_BASE}
    mogrify -resize '1024>' -path public/images/sizes/1024 ${PHOTO_PATH}
    git add public/images/sizes/1024/${PHOTO_BASE}
    npm run descriptors
    git add photos.json
    npm start
}
apyns () {
    YEAR=`date -j -v -1d +%Y`
    DATE=`date -j -v -1d +%Y%m%d`
    PHOTO_PATH=`ls -rt -d -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/* | sort | grep "^/Users/${USER}/Pictures/Portfolio/${YEAR}/JPG/${DATE}" | tail -n 1`
    PHOTO_BASE=`ls -1 /Users/${USER}/Pictures/Portfolio/${YEAR}/JPG | sort | grep "^${DATE}" | tail -n 1`
    echo ${PHOTO_PATH}
    echo ${PHOTO_BASE}
    cp ${PHOTO_PATH} public/images/photos/${PHOTO_BASE}
    git add data/images/`echo ${PHOTO_BASE} | cut -c1-22`.json
    git add public/images/photos/${PHOTO_BASE}
    mogrify -resize '640>' -path public/images/sizes/640 ${PHOTO_PATH}
    git add public/images/sizes/640/${PHOTO_BASE}
    mogrify -resize '800>' -path public/images/sizes/800 ${PHOTO_PATH}
    git add public/images/sizes/800/${PHOTO_BASE}
    mogrify -resize '1024>' -path public/images/sizes/1024 ${PHOTO_PATH}
    git add public/images/sizes/1024/${PHOTO_BASE}
    npm run descriptors
    git add photos.json
    npm start
}
aps () {
    while read PHOTO_PATH; do
        PHOTO_BASE=`basename ${PHOTO_PATH}`
        echo ${PHOTO_PATH}
        git add public/images/photos/${PHOTO_BASE}
        mogrify -resize '640>' -path public/images/sizes/640 ${PHOTO_PATH}
        git add public/images/sizes/640/${PHOTO_BASE}
        mogrify -resize '800>' -path public/images/sizes/800 ${PHOTO_PATH}
        git add public/images/sizes/800/${PHOTO_BASE}
        mogrify -resize '1024>' -path public/images/sizes/1024 ${PHOTO_PATH}
        git add public/images/sizes/1024/${PHOTO_BASE}
    done </tmp/diff.txt
    npm run descriptors
    git add photos.json
}
pb () {
    git config --global user.email 'huy-has-photos@users.noreply.github.com'
    git commit -m "Publish photo for `date "+%Y-%m-%d"`"
    git config --global user.email ${GIT_CONFIG_USER_EMAIL}
}
pb8 () {
    git config --global user.email 'huy-has-photos@users.noreply.github.com'
    GIT_AUTHOR_DATE=$(date -v '-8H' '+%a %h %d %H:%M:%S %Y %z') \
        GIT_COMMITTER_DATE=$(date -v '-8H' '+%a %h %d %H:%M:%S %Y %z') \
        git commit -m "Publish photo for `date "+%Y-%m-%d"`"
    git config --global user.email ${GIT_CONFIG_USER_EMAIL}
}
pbb () {
    git config --global user.email 'huy-has-photos@users.noreply.github.com'
    GIT_AUTHOR_DATE=$(date -v '-12H' '+%a %h %d %H:%M:%S %Y %z') \
        GIT_COMMITTER_DATE=$(date -v '-12H' '+%a %h %d %H:%M:%S %Y %z') \
        git commit -m "Publish photo for `date "+%Y-%m-%d"`"
    git config --global user.email ${GIT_CONFIG_USER_EMAIL}
}

# Jupyter
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=ipython3
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
alias python='python3'
alias jupyter='/anaconda3/bin/jupyter'

################################################################################

# From: https://github.com/sorin-ionescu/prezto/blob/master/modules/completion/init.zsh

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Increase the number of errors based on the length of the typed word.
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# Don't complete unavailable commands.
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'

# Array completion element sorting.
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# Directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

# History
zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

# Kill
zstyle ':completion:*:*:*:*:processes' command 'ps -u $USER -o pid,user,comm -w'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
