#!/usr/bin/env bash

# Count how many subdirectories there are in current directory
# list directories | for each, print it's name without newline, list all subdirectories and count
ls -d */ | sort | xargs -I % sh -c "printf '% '; find % -maxdepth 1 -type d ! -path % | wc -l;"

# Note: sorting is unnecessary
# Note2: second time, we use find, because it works better in empty directories
