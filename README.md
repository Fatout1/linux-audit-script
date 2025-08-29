# linux-audit-script
Basic Bash script to audit user accounts, sudoers, login history, and permissions on a Linux system.

# 🛡️ Linux Audit Script

## 📄 Overview
A bash script that performs a basic audit of a Linux system to help identify potential security misconfigurations related to user accounts, sudo privileges, login history, and file permissions.

## 🔧 What It Checks:
- List of users and UID info
- Users with sudo access
- Login history using `last`
- Suspicious accounts with /bin/bash shell
- World-writable files
- SUID/SGID binaries

## 📦 Dependencies
This script uses standard Linux CLI tools:
- `awk`, `grep`, `cut`, `ls`, `find`, `sudo`, `last`

## ▶️ Usage

```bash
chmod +x audit.sh
sudo ./audit.sh
