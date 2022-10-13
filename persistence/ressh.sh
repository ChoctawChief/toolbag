#!/bin/bash
read -p "what port for proxy chain? " p
read -p "what  user on local host  ? " user
read -p "what is your local ip ? " host
read -p "what port is 22 forwarded on ? " ssh

sudo ssh -N -f -R 127.0.0.1:"$p" "$user"@"$host" -p"$ssh"
