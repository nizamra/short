# ============================================
# Nizam's PowerShell Profile & Shortcuts
# ============================================

# --- Git, Terraform & Ansible Aliases ---
Set-Alias gt git
Set-Alias tf terraform
Set-Alias mk minikube
Set-Alias k kubectl
Set-Alias an ansible
Set-Alias anp ansible-playbook

# --- Kubectl Shortcuts ---
function kg    { kubectl get $args }
function kgp   { kubectl get pods $args }
function kgd   { kubectl get deployments $args }
function kgs   { kubectl get svc $args }
function kgn   { kubectl get namespaces $args }
function kgc   { kubectl get configmaps $args }
function kgsc { kubectl get secrets $args }
function kgal { kubectl get all $args }
function kgpw  { kubectl get pods -o wide $args }

# ------------------------------------------------- describe / logs ------
function kd  { kubectl describe $args }
function kl  { kubectl logs $args }
function klf { kubectl logs -f $args }

# ----------------------------------------------------- context / namespace ---
function kctx { kubectl config use-context $args }
function kns { kubectl config set-context --current --namespace=$args }

# ----------------------------------------------------- apply / delete ---
function kc { kubectl create $args }
function ka   { kubectl apply -f $args }
function kdl { kubectl delete -f $args }

# --------------------------------------------------------------- exec ---
function kex {
    param([string]$pod, [string]$sh = "bash")
    kubectl exec -it $pod -- $sh
}

# ------------------------------------------------------------ rollout ---
function kru { kubectl rollout undo $args }
function krh { kubectl rollout history $args }
function krs { kubectl rollout status $args }
