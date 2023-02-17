_lazy_load_nvm() {
  unset -f node nvm npm npx
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
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

