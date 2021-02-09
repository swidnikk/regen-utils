#!/bin/bash

LOG_PATH="/home/ubuntu/var/log/regen"
LOG_FILE=$LOG_PATH/regen.log

exec &> >(tee -a "$LOG_FILE")

echo Stopping Regen Service...
sudo systemctl stop regen.service
