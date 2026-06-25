# network-admin-toolkit

Een verzameling van bash scripts voor netwerkbeheer en troubleshooting.
Gemaakt als portfolio project tijdens mijn opleiding Toegepaste Informatica aan PXL Hogeschool Hasselt.

## Inhoud

| Script | Beschrijving |
|--------|-------------|
| `network_info.sh` | Toont IP-adressen, open poorten, DNS en gateway |
| `ping_test.sh` | Test verbinding naar meerdere hosts tegelijk |
| `port_scanner.sh` | Checkt of belangrijke poorten open zijn op een host |

## Gebruik

Clone de repository:
```bash
git clone https://github.com/MarmyOS/network-admin-toolkit.git
cd network-admin-toolkit
```

Scripts uitvoerbaar maken:
```bash
chmod +x scripts/*.sh
```

Scripts uitvoeren:
```bash
./scripts/network_info.sh
./scripts/ping_test.sh
./scripts/port_scanner.sh
```

## Vereisten

- Linux of Git Bash (Windows)
- Bash 4.0 of hoger

## Auteur

**Martins Omorodion**  
Student Toegepaste Informatica — PXL Hogeschool Hasselt  
AfstudeerRichting: Netwerken & Systemen

## Wat ik geleerd heb

- Praktish gebruiken van Bash scripting
- Netwerk troubleshooting
- TCP/IP, DNS, poorten
- Linux commando's