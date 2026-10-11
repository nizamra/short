#!/usr/bin/env bash
set -e

MARKER_START="# >>> nizamra/short config >>>"
MARKER_END="# <<< nizamra/short config >>>"
BASHRC="$HOME/.bashrc"

CONFIG_BLOCK=$(cat << 'EOF'
# >>> nizamra/short config >>>
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
alias anp='ansible-playbook'
alias ang='ansible-galaxy'
alias anv='ansible-vault'
alias anchk='ansible-playbook --check'
alias ansyn='ansible-playbook --syntax-check'

# ============================================
# Kubectl Get Shortcuts
# ============================================
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get svc'
alias kgn='kubectl get namespaces'
alias kgc='kubectl get configmap'
alias kgsc='kubectl get secret'
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
# <<< nizamra/short config >>>
EOF
)

echo "-> Installing / Updating nizamra/short shortcuts..."

# Create .bashrc if it doesn't exist
[ -f "$BASHRC" ] || touch "$BASHRC"

# Remove old managed block if it exists (ensures idempotency without duplication)
if grep -q "$MARKER_START" "$BASHRC"; then
    # Use sed to safely strip out the old block
    sed -i "/$MARKER_START/,/$MARKER_END/d" "$BASHRC"
    echo "-> Cleaned up previous shortcut block."
fi

# Append the fresh block to ~/.bashrc
echo "" >> "$BASHRC"
echo "$CONFIG_BLOCK" >> "$BASHRC"

echo "✅ Successfully updated $BASHRC!"
echo "👉 Run 'source ~/.bashrc' to apply your new shortcuts immediately."
