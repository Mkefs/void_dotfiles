# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep notify
# bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mkefss/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/ls
source ~/.zsh/prompt

export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
