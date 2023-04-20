# sourcing homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Path 
export ZSH="$HOME/.oh-my-zsh"
export TMUX_CONFIG="~/.config/tmux/.tmux.conf"

# running and sourcing tmux automatically
tmux
tmux source-file ~/.config/tmux/.tmux.conf

ZSH_THEME="agnoster"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  dirhistory
  z
)

# sourcing oh my zsh (afer settings plugins etc!)
source $ZSH/oh-my-zsh.sh

alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gs='git status'
alias gp='git pull'
alias gpoa='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull origin develop \;'
alias gcd='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} checkout develop \;'
alias ll='exa -l -g --icons'
alias pecoll='ll | peco'
alias v='vim .'

