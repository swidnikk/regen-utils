#!/bin/bash

LOG_PATH="/home/ubuntu/var/log/regen"
LOG_FILE=$LOG_PATH/regen.log

exec &> >(tee -a "$LOG_FILE")

mkdir -p $LOG_PATH
echo [$(date -u)]
echo ...Starting Regen Service
sudo systemctl start regen.service
