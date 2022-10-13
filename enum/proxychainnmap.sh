#!/bin/bash
read -m"What Is Your Target? " IP_Address
Sudo proxychains -q nmap -oG proxyscan --top-ports=20 -sT -sV -sC  -v --open  -Pn $IP_Address
