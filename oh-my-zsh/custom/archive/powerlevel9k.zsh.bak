git_duet_initials(){
    GIT_DUET_INITIALS=$(echo $(git config --get-regexp "^duet.env.git-.*-initials" 2>/dev/null | sed -e 's/^.*-initials //') | sed -e 's/ /+/')
    echo -n "$GIT_DUET_INITIALS"
}

POWERLEVEL9K_CUSTOM_GIT_DUET="git_duet_initials"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir custom_git_duet vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_VCS_SHORTEN_LENGTH=40
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=40
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
