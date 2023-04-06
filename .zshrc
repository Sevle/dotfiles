# Created by newuser for 5.7.1
eval "$(starship init zsh)"

export PATH=$PATH:/sbin
export PATH=$PATH:/home/sevle/projetos/scripts/
alias sudo='doas'

ZSH_CONFIG_PLUGIN="$HOME/.config/zsh/plugins/"
ZSH_CONFIG="$HOME/.config/zsh/"

source $ZSH_CONFIG_PLUGIN/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CONFIG_PLUGIN/zsh-autosuggestions/zsh-autosuggestions.zsh

HISTFILE=$ZSH_CONFIG/zsh_history
SAVEHIST=10000
HISTSIZE=10000

#HISTSIZE=100000
#HISTFILE=$HOME/.config/zsh/zsh_history
