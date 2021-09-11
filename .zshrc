export EDITOR=nvim
export GPG_TTY=$(tty)

# Emacs keybindings.
bindkey -e

# Plugin manager.
source /usr/share/zinit/zinit.zsh

zinit snippet PZTM::directory
zinit snippet PZTM::completion
zinit snippet PZTM::history

alias g='git'
alias ga='git add'
alias gars='git add . && git reset --hard'
alias gc='git commit -v'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias glg='git log --stat'
alias glr='git pull --rebase'
alias gp='git push'
alias grh='git reset HEAD'
alias grs='git reset --hard'
alias gs='git status'
alias l='exa -a -l'
alias lt='exa -a --tree'
alias md='mkdir -p'
alias v='nvim'
alias ya='yadm add'
alias yc='yadm commit'
alias yd='yadm diff'
alias ys='yadm status'

gpg-connect-agent updatestartuptty /bye >/dev/null

eval "$(starship init zsh)"
