#!/bin/bash
input -m "what port for proxy chain? " p
input -m "what  user on local host  ? " user
input -m "what port is 22 forwarded on ? " ssh

sudo ssh -N -f -R 127.0.0.1:$p $user@$host -p$ssh
