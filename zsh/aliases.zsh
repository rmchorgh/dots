# Git

alias gta='git add'
alias gtb='git checkout -b'
alias gtc='git commit -m'
alias gtl='git log'
alias gtm='git checkout main'
alias gtp='git push'
alias gts='git status'
alias gtu='git pull'

gt2() {
  git add . && git commit -m "$1"
}

gt3() {
  git add . && git commit -m "$1" && git push
}

# Utilities & Programs

alias b='bun'
alias d='docker'
alias mk='mkdir'
alias n='npm'
alias nv='nvim'
alias p='pnpm'
alias pip='pip3'
alias py='python3'
alias y='yarn'

# Folders
#
export API="$HOME/Documents/repos/api/api-new"
export BACKOFFICE="$HOME/Documents/repos/ship/apps/support-portal"
