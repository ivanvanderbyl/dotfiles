alias -g G='| grep'

function cherrypickdir() {
  if [ $# -eq 0 ]; then
    echo "cherrypickdir() usage: master upstream directory"
    return 1
  fi

  git cherry-pick $(git log --format=oneline --no-merges $1...$2 $3 | tail -r | cut -d " " -f 1)
}

cherrypickdirlog() {
  if [ $# -eq 0 ]; then
    echo "cherrypickdir() usage: master upstream directory"
    return 1
  fi
  git log --format=oneline --no-merges $1...$2 $3
}

# Kubernetes
alias k=kubectl
complete -F __start_kubectl k
