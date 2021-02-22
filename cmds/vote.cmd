#!/bin/bash

# https://docs.cosmos.network/master/modules/gov/01_concepts.html

regen tx gov vote 4 yes --from $REGEN_ACCOUNT \ 
	--gas auto -y \ 
	--fees=2000utree \ 
	--chain-id $REGEN_CHAINID
