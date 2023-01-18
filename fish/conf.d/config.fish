# ________     _________                        _____ .__    ____   
# \______ \   /   _____/  ____   ____    ____ _/ ____\|__|  / ___\  
#  |    |  \  \_____  \ _/ ___\ /  _ \  /    \\   __\ |  | / /_/  > 
#  |    `   \ /        \\  \___(  <_> )|   |  \|  |   |  | \___  /  
# /_______  //_______  / \___  >\____/ |___|  /|__|   |__|/_____/   
#         \/         \/      \/             \/                      
# This config uses Starship, make sure you have it installed.
# Trying to keep it simple, as always...
# https://github.com/dsrcr/dotfiles  

# Variables
set EDITOR 'nvim'

# Aliases: speeding up cd, switching ls to exa,
alias ..='cd ..'
alias ...='cd ../..'
alias l='exa -l --icons'
alias ls='exa -l --icons'
alias la='exa -la --icons'
alias v='nvim'
alias r='ranger'
alias n='pfetch'
alias c='clear'
alias p='paru'
alias i='paru -S'
alias grep='rg'
alias find='fd'
alias remove='sudo paru --remove'
alias fixkeys='sudo pacman -Sy archlinux-keyring'

# Aliases: Edit dotfiles
alias editi3="$EDITOR ~/repos/dotfiles/i3/config"
alias editfish="$EDITOR ~/repos/dotfiles/fish/conf.d/config.fish"

# Aliases: Git
alias gts='git status'
alias gtc='git commit -m'
alias gpo='git push origin'
alias gpl='git pull'
alias gta='git add'

# Aliases: JS
alias lint='eslint .'
alias fix='eslint --fix .'
alias start='pnpm run start'
alias pformat='prettier --write .'
