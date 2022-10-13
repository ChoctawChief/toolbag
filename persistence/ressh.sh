#!/bin/bash
read -m "what port for proxy chain? " p
read -m "what  user on local host  ? " user
read -m "what is your local ip ? " host
read -m "what port is 22 forwarded on ? " ssh

sudo ssh -N -f -R 127.0.0.1:"$p" "$user"@"$host" -p"$ssh"
