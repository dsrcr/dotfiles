# ________     _________                        _____ .__    ____   
# \______ \   /   _____/  ____   ____    ____ _/ ____\|__|  / ___\  
#  |    |  \  \_____  \ _/ ___\ /  _ \  /    \\   __\ |  | / /_/  > 
#  |    `   \ /        \\  \___(  <_> )|   |  \|  |   |  | \___  /  
# /_______  //_______  / \___  >\____/ |___|  /|__|   |__|/_____/   
#         \/         \/      \/             \/                      
# Custom minimalistic fish(starship) config
# Trying to keep it simple, as always...
# https://github.com/dsorcererdev/dotfiles  

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# starship prompt startup
starship init fish | source


# pnpm
set -gx PNPM_HOME "/home/ds/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
