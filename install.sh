# ============================================================================
#  nizamra/short — personal Bash shortcuts
# ============================================================================

# ============================================
# Custom Definitions & Navigation
# ============================================
TEST_DIR='/mnt/c/Bookly/testingArena'
LAB_DIR='/mnt/c/lab'
alias tes='cd $TEST_DIR'
alias lab='cd $LAB_DIR'

# ============================================
# Core DevOps Aliases (Git, Terraform, K8s, Ansible)
# ============================================
alias gt='git'
alias tf='terraform'
alias k='kubectl'
alias an='ansible'

# ============================================
# Kubectl Get Shortcuts
# ============================================
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get svc'
alias kgn='kubectl get namespaces'
alias kgc='kubectl get configmaps'
alias kgsc='kubectl get secrets'
alias kgall='kubectl get all'
alias kgpw='kubectl get pods -o wide'
alias ktop='kubectl top pods'

# ============================================
# Kubectl Describe & Logs
# ============================================
alias kd='kubectl describe'
alias kl='kubectl logs'
alias klf='kubectl logs -f'

# ============================================
# Apply & Delete
# ============================================
alias ka='kubectl apply -f'
alias kdl='kubectl delete -f'

# ============================================
# Rollout Commands
# ============================================
alias kru='kubectl rollout undo'
alias krh='kubectl rollout history'
alias krs='kubectl rollout status'

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
alias aping='ansible all -m ping -o'
