#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

mkdir -p $LOG_PATH
echo [$(date -u)]
echo ...Starting Regen Cosmovisor Service
sudo systemctl start cosmovisor.service
sudo systemctl status cosmovisor.service
echo Done.
