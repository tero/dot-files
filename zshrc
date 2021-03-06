#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# python virtualenvwrapper
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

#Disable Homebrew tracking
export HOMEBREW_NO_ANALYTICS=1

#Enable bash completion
autoload bashcompinit
bashcompinit

alias rcp="rsync -ah --inplace --info=progress2"
