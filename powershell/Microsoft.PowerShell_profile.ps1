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
function kg { kubectl get $args }
function kgp { kubectl get pods $args }
function kgd { kubectl get deployments $args }
function kgs { kubectl get svc $args }
function kgn { kubectl get ns $args }
function kgc { kubectl get configmap $args }
function kgsc { kubectl get secret $args }
function kd { kubectl describe $args }
function kl { kubectl logs $args }
function klf { kubectl logs -f $args }
function kctx { kubectl config use-context $args }
function kns { kubectl config set-context --current --namespace=$args }

# --- Apply / Delete ---
function ka { kubectl apply -f $args }
function kdl { kubectl delete -f $args }

# --- Exec into Pod ---
function kex { 
    param([string]$pod, [string]$sh="bash") 
    kubectl exec -it $pod -- $sh 
}

# --- Rollout ---
function kru { kubectl rollout undo $args }
function krh { kubectl rollout history $args }
function krs { kubectl rollout status $args }

# --- Minikube Shortcuts ---
function mks { minikube start $args }
function mkx { minikube stop $args }
function mkr { minikube restart $args }
function mku { minikube update-context $args }
function mkd { minikube delete $args }
function mkp { minikube ip $args }
function mkdsh { minikube dashboard $args }
