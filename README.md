# 🚀 Short

**My shell, git and PowerShell shortcuts in one repo.**

[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)
![Git](https://img.shields.io/badge/git-aliases-F05032?logo=git&logoColor=white)
![Shell](https://img.shields.io/badge/shell-bash-4EAA25?logo=gnubash&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207-5391FE?logo=powershell&logoColor=white)
![Platform](https://img.shields.io/badge/platform-Ubuntu%20%7C%20WSL%20%7C%20Windows-blue)
![Last commit](https://img.shields.io/github/last-commit/nizamra/short)
![Maintained](https://img.shields.io/badge/maintained-yes-brightgreen)

My personal collection of cross-platform shortcuts, aliases, and configurations for **Bash**, **Git**, **PowerShell**, **Kubernetes**, **Terraform**, and **Ansible**. Designed for fast deployment on any new workstation or server without disrupting existing configurations.

---

## 📥 Quick Installation

The shortcut files must be loaded by your shell at startup. These steps clone the
repository into `~/short` and add a startup entry once, so the setup persists
after you close the terminal and can be run again safely.

### 🐧 Ubuntu / Linux (Bash)

```bash
if ! command -v git >/dev/null 2>&1; then
  sudo apt update && sudo apt install -y git
fi

if [ ! -d "$HOME/short/.git" ]; then
  git clone https://github.com/nizamra/short.git "$HOME/short"
fi
touch "$HOME/.bashrc"
grep -Fqx 'source "$HOME/short/bash.sh"' "$HOME/.bashrc" || \
  printf '\nsource "$HOME/short/bash.sh"\n' >> "$HOME/.bashrc"
source "$HOME/.bashrc"
```

This applies to Bash. The `tes` and `lab` navigation shortcuts in `bash.sh`
point to paths from the original machine; edit `TEST_DIR` and `LAB_DIR` in
`~/short/bash.sh` to match your machine before using them. For another shell,
add the equivalent source command to that shell's startup file. If you use
PowerShell on Linux, follow the PowerShell instructions below instead.

### 🪟 Windows (PowerShell)

Run in PowerShell. This works with Windows PowerShell 5.1 and PowerShell 7:

```powershell
if (-not (Test-Path -LiteralPath "$HOME\short\.git")) {
    git clone https://github.com/nizamra/short.git "$HOME\short"
}
$profileDirectory = Split-Path -Parent $PROFILE
if (-not (Test-Path -LiteralPath $profileDirectory)) {
    New-Item -ItemType Directory -Path $profileDirectory -Force | Out-Null
}
if (-not (Test-Path -LiteralPath $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force | Out-Null
}
$profileEntry = '. "$HOME\short\powershell.ps1"'
if (-not (Select-String -LiteralPath $PROFILE -SimpleMatch '$HOME\short\powershell.ps1' -Quiet)) {
    Add-Content -LiteralPath $PROFILE -Value $profileEntry
}
. $PROFILE
```


## Repo layout

```text
short/
├── bash.sh           # Bash shortcuts
├── powershell.ps1    # PowerShell shortcuts
├── gitconfig         # shared git aliases
├── LICENSE
└── README.md
```

## License

[MIT](LICENSE) © Nizam Al-Jawabreh
