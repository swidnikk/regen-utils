# Regen Utils
This small collection of utils can simplify common admin tasks to help orchestrate 
a new validator in support of the forthcoming Regen Network ledger. When nature 
hangs in the balance, there's not a moment to lose =)

For full context please be sure to checkout https://github.com/regen-network/testnets/ and https://blockscape-network.medium.com/here-we-aplikigo-bb468d242bc1 and then keep reading below.

![Aplikigo Testnet](./aplikigo.jpg)

# What's here
## Regen Service
Utils to install, uninstall, start, and stop

## Regen Logs
Utils to install and uninstall config files to rotate your validator logs via a 
crontab every so often. 

# Testing and Requirements
- These utils were tested on a fresh Ubuntu 20.04 server running 
- 200GB NAS volume with multi-attach support was mounted at /home for easy future upgrades 

# Getting Started
Clone this repo on your remote host and open a terminal. Next review and run the commands, as you see fit 
from `init-server.log`. After you are done, you'll have a fresh validator with regen binaries on your path. 

Note that the `init-server.log` includes commands to init and mount a fresh NAS device at `/home`. To make
your server cloud native, consider abstracting all dependencies from your node so they can be injected via
a custom service. 

Install the regen service, 

1. `./regen-utils/install-regen.sh`

Install log rotation,

2. `./regen-utils/install-regen-logrotate.sh`

Start the service

3. `./bash regen-utils/start-regen.sh`

Stop the service

4. `./bash regen-utils/start-regen.sh`

Uninstall the regen service, 

5. `./regen-utils/uninstall-regen.sh`

Uninstall log rotation,

6. `./regen-utils/uninstall-regen-logrotate.sh`


# Future Ideas
- add support for Chef 
- add support for Puppet
- add support for a K8 buildpack
- add support for cloud native encapsultation

"Discover Possible"
