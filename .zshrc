# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=30000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/andre/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -z $LANG ]; then
  export LANG=de_DE.UTF-8
  export MM_CHARSET=UTF-8
fi

export GPG_TTY=$(tty)

###
### rbenv
###
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

###
### Add own scripts to the Path
###
export PATH="${HOME}/.local/bin:$PATH"

###
### Alias
###
alias l='ls -al --color=auto'
alias rehash='hash -r'
alias iplong='ip -c -h a'
alias ipshort='ip -c -h -br a'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'

###
### Home for npm packages
###
export PATH="$HOME/.npm/bin:$PATH"

###
### Prompt with some more information
###
PROMPT='%n@%m:%1 > '

###
### Add additional stuff to the shell that should not be included here
###
source ~/.zshrc_addings

