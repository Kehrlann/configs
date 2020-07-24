#!/usr/bin/env bash


SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
STATE_FILE="$SCRIPT_DIR/ping-state.txt"
GREEN=🟩
YELLOW=🟨
RED=🟥
NUMBER_OF_CHARS=4
CHAR_SIZE=4
SIZE=$(($NUMBER_OF_CHARS*$CHAR_SIZE))

# touch the statefile ; in case it doesn't exist
touch "$STATE_FILE"

# Ping google
PING_RESULT=$(ping -c 1 -n -q google.com 2>/dev/null)
PING=1000
if [[ ! -z $PING_RESULT ]]; then
  PING=$(echo "$PING_RESULT" | awk -F '/' 'END {printf "%.0f\n", $5}')
fi

# Load previous state
PREVIOUS_STATE=$(cat $STATE_FILE)
if [[ ${#PREVIOUS_STATE} -gt $SIZE ]]; then
  PREVIOUS_STATE=${PREVIOUS_STATE:$CHAR_SIZE}
fi

# Compute new state
NEW_STATE=$GREEN
if [[ $PING -ge 1000 ]]; then
  NEW_STATE=$RED
elif [[ $PING -ge 100 ]]; then
  NEW_STATE=$YELLOW
fi
NEW_STATE=$PREVIOUS_STATE$NEW_STATE

# Output
echo $NEW_STATE | tee $STATE_FILE
