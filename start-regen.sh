#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

mkdir -p $LOG_PATH
echo [$(date -u)]
echo ...Starting Regen Service
sudo systemctl start regen.service
