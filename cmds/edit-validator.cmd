#!/bin/bash

regen tx staking edit-validator \
  --identity="3E277066462D89EE" \
  --details="Discover Possible" \
  --moniker=$MONIKER \
  --chain-id=aplikigo-1 \
  --gas=auto \
  --fees=4000utree \
  --from=$REGEN_WALLET \
  --log_format="json"

