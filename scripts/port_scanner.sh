#!/bin/bash
# Script: port_scanner.sh
# Auteur: Martins Omorodion
# Beschrijving: Checkt of belangrijke poorten open zijn op een host

# Welke host wil je scannen?
echo "=============================="
echo "   POORT SCANNER"
echo "=============================="
echo ""
read -p "Voer een IP-adres of hostname in: " HOST

# Poorten om te checken met beschrijving
declare -A PORTS
PORTS=(
    [80]="HTTP"
    [443]="HTTPS"
    [22]="SSH"
    [53]="DNS"
    [3389]="RDP"
)

echo ""
echo "Scannen van: $HOST"
echo "------------------------------"

for PORT in "${!PORTS[@]}"; do
    SERVICE="${PORTS[$PORT]}"
    # Probeer verbinding te maken, timeout na 1 seconde
    (echo > /dev/tcp/$HOST/$PORT) > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "✅ Poort $PORT ($SERVICE) - OPEN"
    else
        echo "❌ Poort $PORT ($SERVICE) - GESLOTEN"
    fi
done

echo ""
echo "=============================="
echo "Klaar!"
echo "=============================="