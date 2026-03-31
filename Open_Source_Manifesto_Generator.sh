#!/bin/bash
# Script 5: Manifesto Generator
read -p "Your daily FOSS tool: " TOOL
read -p "Define freedom: " FREEDOM

echo "Tool: $TOOL | Freedom is: $FREEDOM" > my_manifesto.txt
echo "Manifesto saved to my_manifesto.txt"
