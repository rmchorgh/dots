. ~/.config/zsh/aliases.zsh

export TERM="xterm-256color"
autoload -U colors && colors

export EDITOR=zed
eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export SIGNING_KEY=$(gpg --list-secret-keys --keyid-format=long | grep ^sec | awk '{print substr($2, 9)}')
export GPG_TTY=$(tty)
