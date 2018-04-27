export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$PATH:/usr/local/opt/mysql@5.6/bin"

BREW_SCRIPTS="$(brew --prefix)/etc/bash_completion.d"
if [ -d "$BREW_SCRIPTS" ]; then for script in $(find $BREW_SCRIPTS -type l) ; do . $script ; done fi
if [ -f "$BREW_SCRIPTS/git-prompt.sh" ]; then PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '; fi

source ~/.bashrc
