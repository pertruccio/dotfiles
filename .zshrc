export ZSH="/root/.oh-my-zsh"
ZSH_THEME="bullet-train"
plugins=(git k)
source $ZSH/oh-my-zsh.sh
# aliases
alias ll="k -ah"
alias ans_pull="ansible-pull -U https://github.com/pertruccio/freebsd_ws_ansible --vault-password-file=~/.vault_file"
# start neofetch ... a little bit fancyness in the shell
neofetch
# theme customization
BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  dir
  git
)