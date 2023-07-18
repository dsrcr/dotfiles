unsetopt beep
ZSH_THEME="robbyrussell"

eval "$(zoxide init zsh)"

plugins=(
  git 
  zsh-autosuggestions
  zsh-syntax-highlighting
)

export GTK_THEME=Matcha-dark-azul

export MOZ_ENABLE_WAYLAND=1
export WAYLAND_PROTOCOLS_DATADIR="/usr/share/wayland-protocols"

# XDG ENV
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache

# export QT_QPA_PLATFORMTHEME="qt5ct"
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_SESSION_DESKTOP=wayland
export EDITOR=nvim
# export BUILDDIR=/tmp/makepkg
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  # from here you can choose if you want to run X or wayland
  # exec startx &> /dev/null
  exec dbus-run-session sway &> /dev/null
fi

alias ls="exa -l --icons"
alias l="exa -l --icons"
alias la="exa -la --icons"
alias v="nvim"
alias c="clear"
alias p="paru"
alias j="joshuto"
alias h="htop"
alias n="fm6000"
alias sudo="doas"
alias latexmk="latex-mk"

alias pf="prettier --write ."

alias gts="git status"
alias gta="git add ."
alias gtc="git commit -m"
alias gpo="git push origin"
alias pull="git pull origin"
alias log="git log"

export PNPM_HOME="/home/ds/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="$HOME/.cargo/bin:$PATH"
