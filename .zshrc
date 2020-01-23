export ZSH="/root/.oh-my-zsh"
# themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# zsh options
plugins=(history git colorize github pip python zsh-syntax-highlighting cp extract k httpie fzf zsh-iterm-touchbar zsh-autosuggestions tmux)
source $ZSH/oh-my-zsh.sh
ENABLE_CORRECTION="true"

# aliases
alias ll='lsd -la'
alias tinc='sudo /usr/local/sbin/tinc -c ~/Library/tinc --pidfile ~/Library/tinc/pid'
alias tincd='sudo /usr/local/sbin/tincd -c ~/Library/tinc --pidfile ~/Library/tinc/pid'
alias edit='code'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ans_pull="ansible-pull -U https://github.com/pertruccio/freebsd_ws_ansible --vault-password-file=~/.vault_file"
# start neofetch ... a little bit fancyness in the shell
neofetch
# theme customization
[[ ! -f ~/.theme.zsh ]] || source ~/.theme.zsh

# PATH
export PATH="/usr/local/sbin:$PATH"