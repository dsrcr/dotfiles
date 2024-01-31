parse_git_branch() {
  local branch=""
  branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  local git_status=$(git status --porcelain 2>/dev/null)
  local color=red
  if [[ -n "$branch" ]]; then
    branch=" ${branch}"
  fi
  echo "$branch "
}
update_prompt() {
  PS1="%F{red}[%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%c%f%F{red}]%F{magenta}%F{yellow}$(parse_git_branch)%F{blue} %F{reset}"
}
precmd_functions+=(update_prompt)
update_prompt


unsetopt beep
setopt autocd
eval "$(zoxide init zsh)"

export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache
export PATH=$PATH:$(xdg-user-dir USER)/.local/bin
export XDG_CURRENT_DESKTOP=dwm
export XDG_SESSION_DESKTOP=dwm
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export EDITOR=nvim
export BUILDDIR=/tmp/makepkg
export RAVEDUDE_PORT=/dev/ttyACM0
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export ANDROID_HOME=$HOME/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export AWT_TOOLKIT=MToolkit
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export GEM="/home/fw/.local/share/gem/ruby/3.0.0/bin"

alias acl='arduino-cli'
alias acl='arduino-cli compile'
alias aclbl='arduino-cli board list'

alias ls='eza -l --icons --color=always'
alias l='eza -l --icons --color=always'
alias ls='eza -l --icons --color=always'
alias la='eza -la --icons --color=always' 
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -T --color=always --group-directories-first'
alias v="nvim"
alias c="clear"
alias e="exit"
alias j="joshuto"
alias g="grep"
alias g="rg"
alias zl="zellij"
alias h="htop"
alias n="neofetch"
alias poweroff="doas /usr/bin/poweroff"
alias reboot="doas /usr/bin/reboot"

alias latexmk="latex-mk"

alias orphans='doas pacman -Rcns $(pacman -Qqdt)'

alias pf="prettier --write ."


alias gts="git status"
alias gta="git add ."
alias gtc="git commit -m"
alias gpo="git push origin"
alias pull="git pull origin"
alias glg="git log"

[ -s "/home/fw/.bun/_bun" ] && source "/home/fw/.bun/_bun"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx &> /dev/null
# exec dbus-run-session run_something &> /dev/null
fi

case ":$PATH:" in
  *":$GEM:"*) ;;
  *) export PATH="$GEM:$PATH" ;;
esac
