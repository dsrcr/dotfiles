# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
# Startx end

zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/home/ds/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
