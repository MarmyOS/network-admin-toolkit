#!/bin/bash
# Script: network_info.sh
# Auteur: Martins Omorodion
# Beschrijving: Toont netwerkinformatie van het systeem (Windows/Git Bash)

echo "=============================="
echo "   NETWERK INFORMATIE"
echo "=============================="

echo ""
echo "--- IP-adressen ---"
ipconfig | grep -E "IPv4|IPv6|Subnet|Gateway"

echo ""
echo "--- Open poorten ---"
netstat -an | grep "LISTENING"

echo ""
echo "--- DNS server ---"
ipconfig /all | grep "DNS Servers"

echo ""
echo "--- Standaard gateway ---"
ipconfig | grep "Default Gateway"

echo "=============================="
echo "Klaar!"
echo "=============================="