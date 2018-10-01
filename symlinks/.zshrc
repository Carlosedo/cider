# Shortcut to this dotfiles
export CIDER=$HOME/.cider

# Path to your oh-my-zsh configuration.
export ZSH=$CIDER/zsh/oh-my-zsh.git

# Company folder
export COMPANY=~/Thinkful
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set custom theme
ZSH_CUSTOM=$CIDER/zsh/custom/

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins to load (custom plugins may be added to ~/.oh-my-zsh/custom/plugins/)
plugins=(
  brew
  colorize
  colored-man
  gitfast
  git-extras
  npm
  pip
  python
  rvm
  screen
  vagrant
  virtualenvwrapper
  wd
  z
  zsh-syntax-highlighting
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# All ZSH files inside dotfiles
typeset -U config_files
config_files=($CIDER/zsh/*.zsh)

# Load config files
for file in ${config_files}
do
  source $file
done

# Save secret crap inside ~/.localrc
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# TheFuck app
alias fuck='$(thefuck $(fc -ln -1))'

# Syntax highlighting for keynote
alias keynote_highlight="pbpaste | pygmentize -l python -f rtf -O style=default,fontface=\"Inconsolata\",fontsize=50 | pbcopy"
alias keynote_highlight_js="pbpaste | pygmentize -l javascript -f rtf -O style=default,fontface=\"Inconsolata\",fontsize=50 | pbcopy"

# Dont share command history between tabs in iterm2
unsetopt inc_append_history
unsetopt share_history

# Path
export PATH=/usr/local/bin:/usr/local/share/npm/bin:$CIDER/bin:/usr/texbin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/sbin

# `brew cask` will install for all users by default
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

source /Users/carlosedo/Thinkful/environment/env-vars.sh
alias pysplash="cd ~/Thinkful/pysplash&&source /usr/local/bin/virtualenvwrapper.sh&&export WORKON_HOME=/Users/$USER/.virtualenvs&&source ../environment/env-vars.sh&&workon pysplash&&python -B webstart.py"

alias gds='git diff --staged'
alias gpp='git pull -p'
alias gpm='gcm && gpp && gbda'

alias git-daily='git-standup -s -m 2'
alias git-weekly='git-standup -s -m 2 -d 7'

export PATH="/usr/local/opt/node@8/bin:$PATH"

# node version manager
export NVM_DIR=~/.nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# arcanist
export PATH=$PATH:/Users/carlosedo/Bloc/arcanist-install/arcanist/bin/
