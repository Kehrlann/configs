_lazy_load_nvm() {
  unset -f node nvm npm npx
  export NVM_DIR="$HOME/.config/nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

node() {
  _lazy_load_nvm
  node "$@"
}

nvm() {
  _lazy_load_nvm
  nvm "$@"
}

npm() {
  _lazy_load_nvm
  npm "$@"
}

npx() {
  _lazy_load_nvm
  npx "$@"
}

