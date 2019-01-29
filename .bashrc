# Show git branch if exists
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Tilix setup
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# Allow Ctrl+S forward search
stty -ixon

# Set default editor to vim
#export EDITOR=vim

# golang
export GOPATH=~/workspace/go

# Z is the new J, yo
source /home/daniel/apps/z/z.sh

# Thefuck ... https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# direnv !
eval "$(direnv hook bash)"

# fzf: https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Paths updates
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/apps/spring/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/apps/flutter/bin

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# history syncing
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
