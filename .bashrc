# Aliases
alias ll='ls -ahlF'

# Show git branch if exists
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\n \[\033[00m\]\$ "

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

# minikube user docker as a backend
eval $(minikube docker-env)

# Paths updates
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/apps/spring/bin
export PATH=$PATH:$GOPATH/bin
