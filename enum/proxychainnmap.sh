#!/bin/bash
read -m"What Is Your Target? " IP_Address
Sudo proxychains -q nmap -oG proxyscan --top-ports=100 -sT -sV -sC  -v --open  -Pn $IP_Address
