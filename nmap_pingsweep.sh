#!/bin/bash
 read -p "what is your target ? " $ip 
nmap -sn $ip | tee ip_sweep

