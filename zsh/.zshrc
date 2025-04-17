. ~/.config/zsh/aliases.zsh

export TERM="xterm-256color"
autoload -U colors && colors

export EDITOR=zed
eval "$(starship init zsh)"

. $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export SIGNING_KEY=9005A1A9

eval "$(mise activate zsh)"
