# kubectl
alias k=kubectl
complete -F __start_kubectl k

alias kstag='echo -e "Connecting to Manabie Staging GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/staging.yaml'
alias kmana='echo -e "Connecting to Manabie Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/manabie.yaml'
alias ktokyo='echo -e "Connecting to Tokyo Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/tokyo.yaml'
alias kjprep='echo -e "Connecting to JPREP Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/jprep.yaml'
alias kreset='echo -e "Resetting to the default config" && export KUBECONFIG=""'
alias kjp='echo "Connecting to JP Partner Production GKE" && export KUBECONFIG=~/Desktop/manabie/k8s-clusters/jp-partners.yaml'

alias kns='kubectl config set-context --current --namespace'

# gcloud
alias kmsdc='gcloud kms decrypt --project dev-manabie-online --location global --keyring deployments --key github-actions --plaintext-file - --ciphertext-file'
alias kmsec='gcloud kms encrypt --project dev-manabie-online --location global --keyring deployments --key github-actions --ciphertext-file - --plaintext-file'

# git
source /usr/share/bash-completion/completions/git
alias g='git'
__git_complete g __git_main
alias gco='git checkout'
__git_complete gco _git_checkout
alias gpl='git pull'
__git_complete gpl _git_pull

alias gitl='git log --all --decorate --oneline --graph'

alias gitd='git checkout develop'
alias gitrl='git checkout $(git branch --all --list '*origin/release/20*' | sort -r | head -n 1 | cut -c18-)'

# go
alias testunit='go test -count=1 ./internal/... -cover -covermode=count -coverprofile=cover.out -coverpkg=./internal/...'
alias gotest='go test -count=1 -cover -covermode=count -coverprofile=cover.out -coverpkg=./... ./...'
alias gohtml='go tool cover -html=cover.out'

# skaffold
source <(skaffold completion bash)

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
