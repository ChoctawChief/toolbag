#!/bin/bash
 read -p "what is your target ?" ip 

nmap -sn  $ip   -oG ip_sweep
 
read -p "Press one to iniate portscan on enumerated targets Press two to quit" $opt	
if $opt = 1 ;then
	
