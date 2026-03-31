#!/bin/bash
# Script 4: Log Analyzer
LOG="/var/log/mysql/error.log"
COUNT=0

if [ -f "$LOG" ] && [ -r "$LOG" ]; then
    echo "Scanning $LOG for errors..."
    while read -r LINE; do
        if echo "$LINE" | grep -iq "error"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOG"
    echo "Total Error Count: $COUNT"
else
    echo "[INFO] Requires elevated privileges to read $LOG or log does not exist."
fi
