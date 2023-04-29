# Proxmox Configuration

### Fixing apt lists for free version

By default Proxmox has the enterprise apt repository set up. Unless you have an enterprise subscription, this will just continue to throw errors whenever `apt update` is run. To fix this:

 1. Navigate to `/etc/apt/`
 2. Edit either `sources.list` or edit files inside `sources.list.d`. At time of writing, my `sources.list.d` had a file containing the enterprise apt repository
 3. Remove or comment out the `deb https://enterprise.proxmox.com/debian/pve bullseye pve-enterprise` line in the sources file
 4. Add `deb http://download.proxmox.com/debian bullseye pve-no-subscription` source list to a new file, or add it to the existing one
 5. Run `apt update` and if there are updates available `apt upgrade`

### Set up alternative root user for system administration

 1. `adduser <username>`
 2. `usermod -aG sudo <username>`
 3. `nano /etc/sudoers.d/pvecommands`
```
## Cmnd alias specification
Cmnd_Alias PVE_COMMANDS = /usr/sbin/qm
#
## Members of the special group may gain some privileges
%sudo ALL=(ALL) NOPASSWD: PVE_COMMANDS
```

Make corresponding user with Linux PAM on GUI

Create a new admin group
Go to permissions, make new at /, give admin group Administrator access with propagation enabled
Assign admin group to administrator user on GUI

`apt install sudo`



### Harden SSH server to allow secure remote access

`sudo nano /etc/ssh/sshd_config`

Make sure these lines are uncommented:
```
PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
```
