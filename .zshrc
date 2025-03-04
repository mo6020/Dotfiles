# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"
#ZSH_THEME="pure"

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(aws git brew macos screen ssh-agent sublime web-search vagrant)
# GCP completion in zsh

source $ZSH/oh-my-zsh.sh
#source /usr/local/share/zsh/site-functions/_aws

# User configuration

export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH="/Users/ed/go:/Users/ed/go:/Users/ed/Repositories/"
alias ls='ls -Gla'
alias updatedb='sudo /usr/libexec/locate.updatedb'
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Powerline config
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ed/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ed/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/completion.zsh.inc'; fi
