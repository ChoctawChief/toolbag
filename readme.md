# General Info 
a small collection of scripts for pentesting 
# Setup 
cd ~

git clone https://github.com/ChoctawChief/toolbag

cd toolbag

# Tools 
## Services 
### sshstart.sh Starts and stops ssh server using either systemctl or init.d 

usage

cd toolbag/services

./sshstart.sh to start 

./sshstart -s to stop

## Enumeration
### nmap_pingsweep.sh interactive nmap that saves output of scans to file 

usage

cd toolbag/enum

./nmap_pingsweep.sh

### proxychainnmap.sh interactive nmap utilizing proxychains saves output of scans to file 

usage

cd toolbag/enum

./proxychainnmap.sh

### pingsweep.sh pings 192.168.1.0/24 and lists all hosts that respond

usage

cd toolbag/enum

./pingsweep




## Persistence
### autostartper.sh loads scripts or comands in to crontab to run at start up default script netcatreverseshell.sh

usage 

cd toolbag/persis ./autostartper.sh
__edit for specific script change to a command or use default__ 

### netcatreverseshell.sh runs 4 instaces of netcat forwarding bash to outbound ports for reverse shell

usage 

nc -lvnp (port) on local host 

cd toolbag/persistence nano
__change ip and ports to local config, make sure ports are forwarded if working with NAT__

./netcatreverseshell.sh on remote host 

### ressh.sh interactive script that configures and run a reverse ssh connection from remote to local host uses proxchains to forward local traffic to remote host __make sure ssh service is running on local host__

usage 

cd toolba/persistence

./ressh.sh
