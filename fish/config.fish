# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
# Startx end

zoxide init fish | source

set EDITOR 'nvim'
set RUST_BACKTRACE 1


set -gx PYTHON "/home/ds/.local/bin"
set -gx PATH $PATH:$PYTHON

# pnpm
set -gx PNPM_HOME "/home/ds/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# android sdk
set -gx ANDROID_HOME "/home/ds/Android/Sdk"
set -gx PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# java sdk 

set -gx ANDROID_HOME "/home/ds/Android/Sdk"
set -gx PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

set -gx JAVA_HOME "/usr/lib/jvm/java-19-openjdk"
set -gx PATH $PATH:$JAVA_HOME
