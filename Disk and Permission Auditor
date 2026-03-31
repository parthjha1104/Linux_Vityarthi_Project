#!/bin/bash
# Script 3: Directory Auditor
PATHS=("/etc/mysql" "/var/log/mysql" "/var/lib/mysql")
echo "--- Permission and Size Audit ---"

for P in "${PATHS[@]}"; do
    if [ -d "$P" ]; then
        PERM=$(ls -ld "$P" | awk '{print $1}')
        SIZE=$(du -sh "$P" 2>/dev/null | cut -f1)
        echo "Location: $P | Perms: $PERM | Size: $SIZE"
    fi
done
