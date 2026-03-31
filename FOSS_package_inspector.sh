#!/bin/bash
# Script 2: FOSS Package Inspector
APP="mysql-server"
echo "Auditing package: $APP"

if dpkg -l | grep -qw "$APP"; then
    echo "[SUCCESS] $APP is installed."
    VERSION=$(dpkg -s "$APP" | grep '^Version:' | awk '{print $2}')
    echo "Version: $VERSION"
    echo "Note: MySQL represents the freedom to manage enterprise data openly."
else
    echo "[ERROR] $APP not found."
fi
