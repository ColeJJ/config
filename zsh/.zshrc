# sourcing homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Path 
export ZSH="$HOME/.oh-my-zsh"
export TMUX_CONFIG="~/.config/tmux/.tmux.conf"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home/"
export JAVAFX_SDK_HOME="/Library/Java/JavaVirtualMachines/javafx20/javafx-sdk-20.0.1/lib"
export JAVA_JMODS_HOME="/Library/Java/JavaVirtualMachines/javafx20/javafx-jmods-20.0.1"
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$JAVAFX_SDK_HOME
export PATH=$PATH:$JAVA_JMODS_HOME
export GOBIN="/usr/local/go/bin"
export PATH=$PATH:$GOBIN

# running and sourcing tmux automatically
tmux
tmux source-file ~/.config/tmux/tmux.conf

# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

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

