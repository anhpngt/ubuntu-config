if command -v kubectl >/dev/null; then
  source <(kubectl completion bash)
  alias k=kubectl
  complete -F __start_kubectl k

  alias kstag='echo -e "Connecting to Manabie Staging 2 GKE" && export KUBECONFIG=~/manabie-com/k8s-clusters/staging-2.yaml'
  alias kmana='echo -e "Connecting to Manabie Production GKE" && export KUBECONFIG=~/manabie-com/k8s-clusters/manabie.yaml'
  alias ktokyo='echo -e "Connecting to Tokyo Production GKE" && export KUBECONFIG=~/manabie-com/k8s-clusters/tokyo.yaml'
  alias kreset='echo -e "Resetting to the default config" && export KUBECONFIG=""'
  alias kjp='echo "Connecting to JP Partner Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/jp-partners.yaml'

  alias kns='kubectl config set-context --current --namespace'
fi
if command -v helm >/dev/null; then
  source <(helm completion bash)
fi
if command -v kind >/dev/null; then
  source <(kind completion bash)
fi
if command -v skaffold >/dev/null; then
  source <(skaffold completion bash)
fi
if command -v skaffoldv2 >/dev/null; then
  if [[ $(type -t compopt) = "builtin" ]]; then
    complete -o default -F __start_skaffold skaffoldv2
  else
    complete -o default -o nospace -F __start_skaffold skaffoldv2
  fi
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
  alias gp='git push'
  __git_complete gp _git_push

  alias gitl='git log --all --decorate --oneline --graph'
  alias gitd='git checkout develop'
  alias gbd='git branch --merged | grep -v "^\*" | xargs -r git branch -d'
  alias gfd='git fetch origin develop:develop'
  alias gmd='git merge develop -S'
  alias gpf='git push --force-with-lease'
fi
if command -v gh >/dev/null; then
  source <(gh completion -s bash)
fi
if command -v go >/dev/null; then
  alias testunit='go test -count=1 ./internal/... -cover -covermode=count -coverprofile=cover.out -coverpkg=./internal/...'
  alias gotest='go test -count=1 -cover -covermode=count -coverprofile=cover.out -coverpkg=./... ./...'
  alias gohtml='go tool cover -html=cover.out'
fi
if command -v terraform >/dev/null; then
  complete -C /usr/local/bin/terraform terraform
  alias tf='terraform'
  complete -C /usr/local/bin/terraform tf

  if command -v terragrunt >/dev/null; then
    alias tg='terragrunt'
    alias hclfmt='terragrunt hclfmt'
    alias render-json='terragrunt render-json'
  fi
fi
if command -v sops >/dev/null; then
  alias sd='sops --input-type yaml --output-type yaml -d /dev/stdin | yq'
  alias sopsd='sops --input-type yaml --output-type yaml -d /dev/stdin | yq'
fi
# if command -v argocd >/dev/null; then
#   source <(argocd completion bash)
# fi
if command -v kamel >/dev/null; then
  source <(kamel completion bash)
fi

# Miscellaneous
alias s='ls'
alias aptu='sudo apt update && sudo apt upgrade -y'

alias c='code .'
alias b='cd ~/manabie-com/backend/'
alias b2='cd ~/manabie-com/backend2/'
alias b3='cd ~/manabie-com/backend3/'
alias btf='cd ~/manabie-com/backend-tf/'
alias br='cd ~/manabie-com/backend-ro/'

if command -v samena >/dev/null; then
  source <(samena completion bash)
fi
