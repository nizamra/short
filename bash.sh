# ============================================================================
#  nizamra/short — personal Bash shortcuts
# ============================================================================

# ============================================
# Custom Definitions & Navigation
# ============================================
TEST_DIR='/mnt/c/PHDWork/testingArena'
LAB_DIR='/mnt/c/lab'
alias tes='cd $TEST_DIR'
alias lab='cd $LAB_DIR'

alias ll='ls -alF'
alias ports='ss -tulpn'

# ============================================
# Core DevOps Aliases (Git, Terraform, K8s, Ansible)
# ============================================
alias gt='git'
alias tf='terraform'
alias k='kubectl'
alias an='ansible'

# ============================================
# Terraform Get Shortcuts
# ============================================
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfv='terraform validate'
alias tff='terraform fmt -recursive'
alias tfo='terraform output'
alias tfs='terraform state'
alias tfw='terraform workspace'

# ============================================
# Kubectl Get Shortcuts
# ============================================
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods -A'
alias kgpw='kubectl get pods -o wide'
alias kgd='kubectl get deployments'
alias kgs='kubectl get svc'
alias kgn='kubectl get namespaces'
alias kgno='kubectl get nodes'
alias kgc='kubectl get configmaps'
alias kgsc='kubectl get secrets'
alias kga='kubectl get all'
alias ktop='kubectl top pods'
alias kge='kubectl get events --sort-by=.lastTimestamp'

# ============================================
# Kubectl Describe & Logs
# ============================================
alias kd='kubectl describe'
alias kl='kubectl logs'
alias klf='kubectl logs -f'

# ============================================
# Apply & Delete
# ============================================
alias kc='kubectl create'
alias ka='kubectl apply -f'
alias kdl='kubectl delete -f'

# ============================================
# Rollout Commands
# ============================================
alias kru='kubectl rollout undo'
alias krh='kubectl rollout history'
alias krs='kubectl rollout status'
alias krr='kubectl rollout restart'
alias ktopn='kubectl top nodes'

alias kctx='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'

# ---------------------------------------------------------------- ansible ---
alias ap='ansible-playbook'
alias apc='ansible-playbook --check'
alias apd='ansible-playbook --diff'
alias aps='ansible-playbook --syntax-check'
alias ai='ansible-inventory'
alias aig='ansible-inventory --graph'
alias ag='ansible-galaxy'
alias agi='ansible-galaxy install'
alias agl='ansible-galaxy list'
alias av='ansible-vault'
alias ave='ansible-vault edit'
alias avv='ansible-vault view'
alias aven='ansible-vault encrypt'
alias avd='ansible-vault decrypt'
alias al='ansible-lint'
alias ad='ansible-doc'
alias adl='ansible-doc -l'
alias ac='ansible-config'
alias acd='ansible-config dump --only-changed'
alias aping='ansible all -m ping'
