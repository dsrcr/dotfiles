# https://github.com/dsrcr/dotfiles  

# Variables

# Aliases: speeding up cd, switching ls to exa,
alias ..='cd ..'
alias ...='cd ../..'
alias l='exa -l --icons'
alias ls='exa -l --icons'
alias la='exa -la --icons'
alias v='nvim'
alias c='clear'
alias p='paru'
alias grep='rg'
alias find='fd'

# Aliases: Git
alias gts='git status'
alias gtc='git commit -m'
alias gpo='git push origin'
alias gta='git add'

# Aliases: JS
alias lint='eslint . | eslint --fix .'
alias pf='prettier --write .'
alias start='pnpm vite'
