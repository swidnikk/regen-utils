#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo ... Removing Regen Cosmovisor Service
sudo systemctl stop cosmovisor.service
sudo systemctl disable cosmovisor.service
sudo rm /lib/systemd/system/cosmovisor.service
sudo systemctl daemon-reload
