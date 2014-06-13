d() {
  if [[ -n "$1" ]]; then
    cd "+$1"
  else
    dirs -v
  fi
}

# source dotfiles
reload() {
  source $HOME/.zshrc &&
  echo "Your dot files are now \033[1;32msourced\033[0m."
}

edit() {
  if [[ -e $1 ]]; then
    local FILE=$1
  else
    local FILE="."
  fi
  open $FILE -a 'Sublime Text'
}
