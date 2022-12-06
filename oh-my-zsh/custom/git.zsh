# Git related stuff
alias gitc='git duet-commit -m'

export GIT_DUET_ROTATE_AUTHOR=1

## zsh prompt duet initials
function prompt_git_duet() {
  GIT_DUET_INITIALS=$(echo $(git config --get-regexp "^duet.env.git-.*-initials" 2>/dev/null | sed -e 's/^.*-initials //') | sed -e 's/ /+/')
  if [[ ! -z "$GIT_DUET_INITIALS" ]]; then
    p10k segment -f 15 -t "$GIT_DUET_INITIALS"
  fi
}

# To include in powerlevel10k, add "git_duet" to POWERLEVEL9k_LEFT_PROMPT_ELEMENTS in ~/.p10k.zsh
