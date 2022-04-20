# ________     _________                        _____ .__    ____   
# \______ \   /   _____/  ____   ____    ____ _/ ____\|__|  / ___\  
#  |    |  \  \_____  \ _/ ___\ /  _ \  /    \\   __\ |  | / /_/  > 
#  |    `   \ /        \\  \___(  <_> )|   |  \|  |   |  | \___  /  
# /_______  //_______  / \___  >\____/ |___|  /|__|   |__|/_____/   
#         \/         \/      \/             \/                      
# Custom minimalistic fish(oh-my-fish) config
# Trying to keep it simple, as always...
# https://github.com/dsorcererdev/dotfiles  

# Variables
set EDITOR 'nvim'

# Path to Oh My Fish install.
set -q XDG_DATA_HOME and set -gx OMF_PATH '$XDG_DATA_HOME/omf' or set -gx OMF_PATH '$HOME/.local/share/omf'

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Aliases: speeding up cd, switching ls to lsd, switching vim to LunarVim
alias ..='cd ..'
alias ...='cd ../..'
alias ls='lsd -l'
alias vim='nvim'
alias ra='ranger'

# Aliases: commands
alias editi3="$EDITOR ~/.config/i3/config"
alias editfish="$EDITOR ~/.config/fish/conf.d/omf.fish"
