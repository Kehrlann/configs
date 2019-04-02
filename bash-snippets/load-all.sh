#!/usr/bin/env bash

set -e

HOMETIME="18:00:00"
HOURS="$1"

main() {
  delete_all_ssh_identities
  add_private_key
}

delete_all_ssh_identities() {
  ssh-add -D
}

add_private_key() {
  if [ -z "$HOURS" ]
  then
    add_private_keys_until_hometime
  else
    add_private_keys_for_x_hours
  fi
}

add_private_keys_until_hometime() {
  local now="$(date +%s)"
  local until="$( date -j -f "%T" $HOMETIME +%s )"
  local seconds_remaining="$( expr $until - $now )"

  if [ "$seconds_remaining" -lt 1 ]
  then
    echo "$HOMETIME is history. Go home!"
    exit 1
  else
    echo "Adding $OWNER's private key until $HOMETIME..."
    ssh-add -t "$seconds_remaining" *.ppk
  fi
}

add_private_key_for_x_hours() {
  echo "Adding $OWNER's private key for $HOURS hours..."
  ssh-add -t "${HOURS}h" *.ppk
}

main
