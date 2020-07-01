# d() {
#   if [[ -n "$1" ]]; then
#     cd "+$1"
#   else
#     dirs -v
#   fi
# }

# source dotfiles
reload() {
  source $HOME/.zshrc &&
  echo "Your dot files are now \033[1;32msourced\033[0m."
}

# If no arguments are supplied open the current folder
function edit {
  open "${1:-.}" -a 'Visual Studo Code'
}
