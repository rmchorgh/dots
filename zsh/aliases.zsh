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

# Utilities

alias b='bun'
alias mk='mkdir'
alias nv='nvim'
alias p='pnpm'
alias pip='pip3'
alias py='python3'
