#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo Stopping Regen Service...
sudo systemctl stop regen.service
sudo systemctl status regen.service
echo Done.
