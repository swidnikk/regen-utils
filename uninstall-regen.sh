#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
#echo ... Removing Regen Log Rotate
#sudo rm /etc/logrotate.d/regen

echo ... Removing Regen Service
sudo systemctl stop regen.service
sudo systemctl disable regen.service
sudo rm /lib/systemd/system/regen.service
sudo systemctl daemon-reload
