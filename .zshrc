# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="deg0nz"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(rails git git-extras pip ruby brew osx python sublime sudo terminalapp web-search wd lol autojump atom zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias ll='ls -lha'

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=3000
bindkey -e
# End of lines configured by zsh-newuser-install

# My personal Configs
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit
#source /path/to/starcluster/completion/starcluster-completion.sh

# Homebrew PATHes
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/lib:/usr/local/lib:/lib:/usr/lib:/usr/X11/lib

## Make Entrys from ~/.ssh/config Tabbable scp sftp ssh mosh and sshfs
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh mosh sshfs

## Colors1
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

## Colors2		und		Prompt
autoload -U colors && colors
#PS1="%{$fg[green]%}%n%{$fg[red]%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%} %% "

## Default text Editor
export EDITOR='/Applications/Sublime Text.app/Contents/MacOS/Sublime Text'

## Some handy aliases
export POWERLINE_CONFIG_COMMAND='/usr/local/lib/python2.7/site-packages/powerline/config.py'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

## Autojump support:
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
export PATH="/usr/local/opt/opencv3/bin:$PATH"
