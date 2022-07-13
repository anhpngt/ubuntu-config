if command -v kubectl >/dev/null; then
  source <(kubectl completion bash)
  alias k=kubectl
  complete -F __start_kubectl k

  alias kstag='echo -e "Connecting to Manabie Staging GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/staging.yaml'
  alias kstag2='echo -e "Connecting to Manabie Staging 2 GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/staging-2.yaml'
  alias kmana='echo -e "Connecting to Manabie Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/manabie.yaml'
  alias ktokyo='echo -e "Connecting to Tokyo Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/tokyo.yaml'
  alias kjprep='echo -e "Connecting to JPREP Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/jprep.yaml'
  alias kreset='echo -e "Resetting to the default config" && export KUBECONFIG=""'
  alias kjp='echo "Connecting to JP Partner Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/jp-partners.yaml'

  alias kns='kubectl config set-context --current --namespace'
fi
if command -v helm >/dev/null; then
  source <(helm completion bash)
fi
if command -v minikube >/dev/null; then
  source <(minikube completion bash)
fi
if command -v kind >/dev/null; then
  source <(kind completion bash)
fi
if command -v skaffold >/dev/null; then
  source <(skaffold completion bash)
fi
if command -v git >/dev/null; then
  source /usr/share/bash-completion/completions/git
  alias g='git'
  __git_complete g __git_main
  alias gco='git checkout'
  __git_complete gco _git_checkout
  alias gpl='git pull'
  __git_complete gpl _git_pull
  alias gb='git branch'
  __git_complete gb _git_branch

  alias gitl='git log --all --decorate --oneline --graph'
  alias gitd='git checkout develop'
  alias gitrl='git checkout $(git branch --all --list '*origin/release/20*' | sort -r | head -n 1 | cut -c18-)'
fi
if command -v go >/dev/null; then
  alias testunit='go test -count=1 ./internal/... -cover -covermode=count -coverprofile=cover.out -coverpkg=./internal/...'
  alias gotest='go test -count=1 -cover -covermode=count -coverprofile=cover.out -coverpkg=./... ./...'
  alias gohtml='go tool cover -html=cover.out'
fi
if command -v terraform >/dev/null; then
  complete -C /usr/bin/terraform terraform
  alias tf='terraform'
  complete -C /usr/bin/terraform tf

  if command -v terragrunt >/dev/null; then
    alias tg='terragrunt'
    alias hclfmt='terragrunt hclfmt'
    alias render-json='terragrunt render-json'
  fi
fi

# Miscellaneous
alias s='ls'
alias aptu='sudo apt update && sudo apt upgrade -y'

alias c='code .'
alias be='cd ~/Desktop/manabie/backend/'
alias br='cd ~/Desktop/manabie/backend-readonly/'
alias bp='cd ~/Desktop/manabie/backend-parallel/'
alias bt='cd ~/Desktop/manabie/backend-third/'
alias btf='cd ~/Desktop/manabie/backend-terraform'
alias sa='cd ~/Desktop/manabie/samena/'
