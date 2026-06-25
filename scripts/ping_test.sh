#!/bin/bash
# Script: ping_test.sh
# Auteur: Martins Omorodion
# Beschrijving: Test verbinding naar meerdere hosts

# Lijst van hosts om te testen
HOSTS=(
    "8.8.8.8"        # Google DNS
    "1.1.1.1"        # Cloudflare DNS
    "google.com"     # Test DNS + internet
    "github.com"     # Test GitHub
)

echo "=============================="
echo "   VERBINDING TEST"
echo "=============================="

for HOST in "${HOSTS[@]}"; do
    echo ""
    echo "Testen: $HOST"
    ping -n 1 "$HOST" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "✅ $HOST is bereikbaar"
    else
        echo "❌ $HOST is NIET bereikbaar"
    fi
done

echo ""
echo "=============================="
echo "Klaar!"
echo "=============================="