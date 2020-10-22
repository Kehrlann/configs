export GIT_DUET_ROTATE_AUTHOR=1

################################################################
# Git-duet: Support for committer/author pair in git
# see: https://github.com/git-duet/git-duet
function prompt_git_duet() {
  GIT_DUET_INITIALS=$(echo $(git config --get-regexp "^duet.env.git-.*-initials" 2>/dev/null | sed -e 's/^.*-initials //') | sed -e 's/ /+/')
  if [[ ! -z "$GIT_DUET_INITIALS" ]]; then
    p10k segment -f 15 -t "$GIT_DUET_INITIALS"
  fi
}
