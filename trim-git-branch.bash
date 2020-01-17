function _git-branch {
  git symbolic-ref -q --short HEAD 2> /dev/null | awk -v len=40 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }' || return 1
}

function _git-upstream-branch {
  echo ''
}

SCM_THEME_BRANCH_TRACK_PREFIX=''
