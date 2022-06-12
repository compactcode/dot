# Plugin manager.
source /usr/share/zinit/zinit.zsh

zinit snippet PZTM::completion # auto completion
zinit snippet PZTM::directory # automatic pushd/popd
zinit snippet PZTM::editor # emacs key bindings
zinit snippet PZTM::history # history setup
zinit snippet PZTM::pacman # aliases

zinit snippet OMZP::asdf # version manager
zinit snippet OMZP::extract # compression utilities
zinit snippet OMZP::fzf # fuzzy finder
zinit snippet OMZP::gpg-agent # ssh agent
zinit snippet OMZP::zoxide # cd replacement

zinit from"gh-r" as"program" mv"direnv* -> direnv" \
    atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' \
    pick"direnv" src="zhook.zsh" for \
        direnv/direnv

export AWS_VAULT_BACKEND=pass
export AWS_VAULT_PROMPT=pass
export EDITOR=nvim
export FZF_DEFAULT_OPTS='--reverse --height 40%
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
'

alias b='bat'
alias be='bundle exec';
alias ber='bundle exec rspec';
alias berc='bundle exec rails console';
alias bers='bundle exec rails server';
alias bi='bundle install';
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
alias j='z'
alias l='exa -a -l --icons'
alias lt='exa -a --tree --icons'
alias md='mkdir -p'
alias o='xdg-open'
alias v='nvim'
alias ya='yadm add'
alias yc='yadm commit'
alias yco='yadm checkout'
alias yd='yadm diff'
alias ydc='yadm diff --cached'
alias yrh='yadm reset HEAD'
alias ys='yadm status'
alias zfp='./bin/zfp'

eval "$(starship init zsh)"
