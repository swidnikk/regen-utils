#!/bin/bash

LOG_PATH="/home/ubuntu/var/log/regen"
LOG_FILE=$LOG_PATH/regen.log

exec &> >(tee -a "$LOG_FILE")

echo ...Removing Regen Service
sudo systemctl stop regen.service
sudo systemctl disable regen.service
sudo rm /lib/systemd/system/regen.service
sudo systemctl daemon-reload
