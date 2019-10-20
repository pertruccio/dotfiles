export ZSH="/root/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh
# aliases
alias ll="ls -al"
# start neofetch ... a little bit fancyness in the shell
neofetch
# start tmux session in case we will be disconnected
if [[ -z "$TMUX" ]]; then
    tmux has-session &> /dev/null
    if [ $? -eq 1 ]; then
      exec tmux new
      exit
    else
      exec tmux attach
      exit
    fi
fi
