#!/bin/bash

regen tx staking create-validator \
  --amount=900000utree \
  --pubkey=$(regen tendermint show-validator) \
  --moniker=$MONIKER \
  --chain-id=aplikigo-1 \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="1" \
  --gas=auto \
  --fees=4000utree \
  --from=$REGEN_WALLET \
  --log_format="json"

