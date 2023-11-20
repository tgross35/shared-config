
### Aliases ###

# Get colors for grep options
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Forget python2...
alias python=python3
alias pip=pip3

# Git helpers
alias gs="git status"
alias gp="git push origin"
alias gc="git commit -am"
alias gd="git diff"
alias gdm="git diff main"
alias gcm="git checkout main"
alias gcr='git commit -am "$(cat "$(git rev-parse --git-dir)/COMMIT_EDITMSG")"'
alias gcane="git commit --amend --no-edit"
alias gpfl="git push --force-with-lease"

# cd shortcut
alias ..="cd .."

# Network helpers
alias setroutes="sh /Users/trevorgross/Documents/Programming/Intrepid/add_routes_pf.sh"

# Search dotfiles
alias rg="rg --hidden"

### Config ###

# Only for MacOS
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Set editor to vim
export EDITOR=vim

# Pipenv config
export PIPENV_VENV_IN_PROJECT=True

# Prompt config
export PROMPT="%F{cyan}%n@%m%f %1~ %# "

### Path Config ###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$(brew --prefix bison)/bin:$PATH"


### Autojump Config ###

eval "$(zoxide init zsh)"

source /Users/tmgross/.docker/init-zsh.sh || true # Added by Docker Desktop
export CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/tmgross/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
