# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Performance Checker
# zmodload zsh/zprof
# Path to your oh-my-zsh installation.
# PATH="/usr/local/bin:$(getconf PATH)"
  export PATH="$(yarn global bin):$PATH"
  export PATH="$HOME/.npm/bin:$PATH"
  export PATH="$HOME/bin/mongodb-linux-x86_64-ubuntu1804-4.0.6/bin:$PATH"
  export ZSH="/home/wuwica/.oh-my-zsh"
  source ~/.fonts/*.sh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

POWERLEVEL9K_CUSTOM_PROJECT_TYPE="zsh_project_type"
POWERLEVEL9K_CUSTOM_PROJECT_TYPE_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PROJECT_TYPE_BACKGROUND="black"

zsh_project_type(){
  local icon=$'\0'
  if [ -e ./package.json ]; then
    if grep -q '"react"' ./package.json; then
        local color='%F{63}'
        local icon=$'React.js '
    elif grep -q '"angular"' ./package.json; then
        local color='%F{red}'
        local icon=$'Angular '
    elif grep -q '"vue"' ./package.json; then 
        local color='%F{green}'
        local icon=$"Vue "
    else 
        local color='%F{green}'
        local icon=$'Node.js '
    fi
  elif [ -e ./index.html ]; then
      local color='%F{132}'
      local icon=$'HTML5 '
  elif [ -e ./gemfile ]; then
      if grep -q '"rails"' ./gemfile; then
          local color='%F{red}'
          local icon= $'Ruby On Rails '
      else
          local color='%F{red}'
          local icon=$'Ruby '
      fi
  elif [ -e ./wp-config.php ]; then
      local color='%F{blue}'
      local icon=$'Wordpress '
  fi
  if [ $icon != $'\0' ]; then
    echo -n "%{$color%}$icon  \uE0B1";
  else 
  fi
}


#POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_MODE='awesome-fontconfig'
#echo $POWERLEVEL9K_CUSTOM_PROJECT_TYPE;
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os root_indicator dir_writable dir vcs custom_project_type)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time rbenv disk_usage nvm rvm node_version time)

POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf00d'
POWERLEVEL9K_FAIL_ICON=$'\uf00d'
POWERLEVEL9K_OK_ICON=$'\uf00c'
POWERLEVEL9K_NODE_VERSION_FOREGROUND="black"
POWERLEVEL9K_NODE_ICON=$''
POWERLEVEL9K_STATUS_CROSS=true

POWERLEVEL9k_DISK_USAGE_BACKGROUND="red"

POWERLEVEL9K_CUSTOM_OS="echo '\uf17a'"
POWERLEVEL9K_CUSTOM_OS_BACKGROUND='white'
POWERLEVEL9K_CUSTOM_OS_FOREGROUND='black'

P9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_BACKGROUND"
P9K_COMMAND_EXECUTION_TIME_FOREGROUND="183"
P9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
P9K_COMMAND_EXECUTION_TIME_PRECISION=1

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{9}\u2570\uf0da%F{2}\uf0da%F{12}\uf0da "
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

ZSH_THEME="powerlevel9k/powerlevel9k"

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
# ENABLE_CORRECTION="true"

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
  git
  zsh-syntax-highlighting 
  zsh-autosuggestions
  k
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# This loads nvm
export NVM_DIR=~/.nvm
function nvm {
  if [ -s "$NVM_DIR/nvm.sh" ]; then 
    . "$NVM_DIR/nvm.sh"
    nvm use system
    nvm $@
  fi
}

#zprof
