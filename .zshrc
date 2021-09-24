# Emacs keybindings.
bindkey -e

# Plugin manager.
source /usr/share/zinit/zinit.zsh

zinit snippet PZTM::completion
zinit snippet PZTM::directory
zinit snippet PZTM::history
zinit snippet PZTM::pacman

zinit snippet OMZP::gpg-agent

export EDITOR=nvim
export FZF_DEFAULT_OPTS="--reverse --height 40%"

alias b='bat'
alias g='git'
alias ga='git add'
alias gars='git add . && git reset --hard'
alias gc='git commit -v'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdc='git diff --cached'
alias glg='git log --stat'
alias glr='git pull --rebase'
alias gp='git push'
alias grh='git reset HEAD'
alias grs='git reset --hard'
alias gs='git status'
alias l='exa -a -l --icons'
alias lt='exa -a --tree --icons'
alias md='mkdir -p'
alias v='nvim'
alias ya='yadm add'
alias yc='yadm commit'
alias yco='yadm checkout'
alias yd='yadm diff'
alias ydc='yadm diff --cached'
alias yrh='yadm reset HEAD'
alias ys='yadm status'

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

eval "$(starship init zsh)"
