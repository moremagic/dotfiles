# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定
#alias ls='ls -CF'
alias ll='ls -ls'
alias la='ls -CFal'
alias vi='nvim'
export PATH=$PATH:~/.roswell/bin

source ~/.config/git/.git-completion.bash
eval "$(direnv hook bash)"

