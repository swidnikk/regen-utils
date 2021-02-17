#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo Stopping Regen Cosmovisor Service...
sudo systemctl stop cosmovisor.service
sudo systemctl status cosmovisor.service
echo Done.
