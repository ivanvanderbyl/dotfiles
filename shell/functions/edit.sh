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

# Use 'o' instead of 'open' (o ~/Sites will open the sites folder)
# If no arguments are supplied open the current folder
function edit {
  open "${1:-.}" -a 'Sublime Text'
}
