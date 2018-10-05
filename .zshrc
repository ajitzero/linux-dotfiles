# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# added by Anaconda3 installer
export PATH="/home/ajitzero/anaconda3/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/home/ajitzero/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="agnoster"

#ZSH_THEME="random"
#ZSH_THEME_RANDOM_CANDIDATES=(
#  "robbyrussell"
#  "agnoster"
#)

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	colored-man-pages
	cp
	extract
	git
	github
	node
	npm
	nvm
	pip
	zsh-autosuggestions
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

# Shorthands
alias c="clear"
alias cgst="c && gst"
alias cls="c && lx"
alias l="lx -A"
alias la="lx -lA"
alias ll="lx -l"
alias nh="nautilus ."

# Utilities
alias chownme="sudo chown -R ajitzero:ajitzero"
alias clippy="xclip -sel c < "
alias uu="sudo apt update"
alias uuu="uu && sudo apt upgrade"
alias zzz="systemctl suspend"

# Added utilities
alias lx="colorls"
alias lst="lx --tree"
alias rmx="trash"

# Python
alias py="python3"
alias venvst="source env/bin/activate"

# Terminal settings
alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshconfig="subl ~/.zshrc"

# Sass
alias sassw="sass --watch sass/style.sass:style.css"
alias sasswc="sassw --style compressed"

# Jekyll
alias bserve="sudo bundle exec jekyll serve"
alias jbuild="jekyll build"
alias jbuildw="jbuild --watch"

# Jekyll
alias pyms="py -m http.server --bind localhost"

# Access recent directories quickly
# Reference: https://github.com/rupa/z
. ~/.z.sh

# Quick-add gitignore file to project
# Reference: https://gitignore.io/
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Welcome Messages
echo "Hi Ajit!" | figlet -f slant | lolcat -p 2.5
echo "\n"
date | lolcat -p 2.5
lx

# Show only current directory in agnoster theme
prompt_dir() { prompt_segment blue black '%c' }

# Enter key fix
stty sane