#!/usr/bin/env bash
echo 'Moving bash_it prefs to custom directory...'
cp bash-it/custom/* ~/.bash_it/custom
echo 'Done !'
echo 'Don''t forget to reload your bash configs: `$ source ~/.bashrc`'
