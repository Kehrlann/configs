function git_prompt_info() {
  local ref
  local length=${GIT_PROMPT_MAX_BRANCH_LENGTH:-50}
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    ref=${ref#refs/heads/}
    ref=$(echo $ref | awk -v len=$length '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }')
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

