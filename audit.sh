#!/bin/bash
# Linux User Audit Script
# Author: Faris Atout

echo "=== All Users ==="
cut -d: -f1 /etc/passwd

echo -e "\n=== Users with UID 0 (Root Level Access) ==="
awk -F: '($3 == "0") { print $1 }' /etc/passwd

echo -e "\n=== Users in the 'sudo' or 'wheel' group ==="
getent group sudo | cut -d: -f4 | tr ',' '\n'
getent group wheel | cut -d: -f4 | tr ',' '\n'

echo -e "\n=== Users With No Password or Locked Accounts ==="
awk -F: '($2 == "!" || $2 == "*" || $2 == "!!") { print $1 }' /etc/shadow 2>/dev/null
