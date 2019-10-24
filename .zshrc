export ZSH="/root/.oh-my-zsh"
# themes
if [[ -n $SSH_CONNECTION ]]; then
    # theme for ssh
    ZSH_THEME="bullet-train"
else
    # theme for local console
    ZSH_THEME="agnoster"
fi

plugins=(git k)
source $ZSH/oh-my-zsh.sh
# aliases
alias ll="k -ah"
alias ans_pull="ansible-pull -U https://github.com/pertruccio/freebsd_ws_ansible --vault-password-file=~/.vault_file"
# start neofetch ... a little bit fancyness in the shell
neofetch
# theme customization
BULLETTRAIN_IS_SSH_CLIENT=true
BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  context
  dir
  git
)