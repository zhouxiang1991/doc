# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH # Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="xxf"
# ZSH_THEME="spaceship"

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
plugins=(
  git
  wd
)

source $ZSH/oh-my-zsh.sh

/usr/local/Cellar/mongodb/3.6.0/bin/mongod -f /usr/local/Cellar/mongodb/mongod.conf
# /usr/local/bin/mongod -f /usr/local/etc/mongod.conf

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
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# bash
alias vim='/usr/local/Cellar/macvim/8.0-143/MacVim.app/Contents/bin/vim'
# alias vim='/usr/local/Cellar/vim/8.0.1350/bin/vim'
# alias grep='grep --color'
alias la='ll -a'
alias bn='babel-node'
alias of='open -a Finder ./'
alias so='source ~/.zshrc'
alias zz='vim ~/.zshrc'
alias zr='vim ~/.vimrc'
# alias r='~/doc/private/script/rm.sh'
# alias k='cd .. && ll'
# alias l='ls -lh'
alias bp='~/doc/private/shell-script/backup.sh'
alias mo='./script/mocha.sh'
alias init='~/doc/private/shell-script/init.sh'
alias pack='~/doc/private/shell-script/package.sh'
# alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
alias mvim='/usr/local/Cellar/macvim/8.0-143/bin/mvim'
alias publish='yarn publish --registry https://registry.yarnpkg.com'
alias quiver='~/doc/private/shell-script/quiver.sh'


# phantomjs
export PATH=$PATH:/Users/zhouxiang/tools/phantomjs/bin/

# casperjs
export PATH=$PATH:/Users/zhouxiang/tools/casperjs/bin/

export PATH=$PATH:/Users/zhouxiang/tools/nvim-osx64/bin/
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# postgres
export PGDATA=/usr/local/var/postgres

# npm
export NODE_PATH=/usr/local/lib/node_modules
# alias n='npm'
# alias ns='npm start'
# alias nd='npm run deploy'
# alias nb='npm run build'
# alias nt='npm run test'
# alias np='npm run prod'
# alias nj='npm run jsdoc'



# git
# alias ad='git add .'
# alias ct='git commit -m'
# alias ph='git push --all'
# alias ce='git clone'
# alias ck='git checkout'
# alias st='git flow feature start'
# alias fh='~/doc/private/script/git_flow_finish_feature.sh'
alias ad='~/doc/private/shell-script/auto-dev.sh'
alias aa='~/doc/private/shell-script/auto-mas.sh'
alias au='~/doc/private/shell-script/auto.sh'
alias push='~/doc/private/shell-script/gitpush.js.sh'
# alias re='git branch -d'
# alias gss='git status'
# alias gdf='git diff'
# alias rt='~/doc/private/script/git_reset.sh'


# # pm2
# alias pda='pm2 delete all'
# alias psa='pm2 stop all'
# alias pt='pm2 list'
# alias pl='pm2 logs'
# alias pst='pm2 start'
# alias prt='pm2 restart'
# alias pk='pm2 kill'
# alias pf='pm2 flush'
# alias pm='pm2 monit'


# # docker
# alias di='docker images'
# alias db='docker build'
# alias dri='docker rmi '
# alias dp='docker ps -a'
# alias dra='docker rm $(docker ps -aq)'
# alias drp='docker rm'

# meteor
# alias mn='meteor npm'
export ANDROID_HOME=/Users/zhouxiang/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export TERM=xterm-256color
# alias vim='/Applications/MacVim.app/Contents/MacOs/vim'
# bindkey -v
# VIMODE='-- INSERT --'
# function zle-line-init zle-keymap-select {
   # VIMODE="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
   # zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# RPROMPT='%{$fg[green]%}${VIMODE}%{$reset_color%}'
# bindkey 'jj' vi-cmd-mode

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
