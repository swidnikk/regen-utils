#!/bin/bash

# https://docs.cosmos.network/master/modules/gov/01_concepts.html

TAG=v0.6.2

VERSION=$(regen version)
LOCATION=$(which regen)

echo Upgrading Regen Ledger to $TAG... 
echo "Current version of $LOCATION: $VERSION"

#mkdir -p ${HOME}/.regen/cosmovisor/upgrades/Mau/bin
#cd $GOPATH/src/github.com/regen/regen-ledger
#git fetch && git checkout $TAG
#EXPERIMENTAL=true make build
#cp build/regen ${HOME}/.regen/cosmovisor/upgrades/Mau/bin
#cp build/regen ${HOME}/code/go/bin/regen-v0.6.2
#cd ${HOME}/code/go/bin/
#ln -sf regen regen-v0.6.2

VERSION=$(regen version)
LOCATION=$(which regen)

echo Regen Binary Updated.
echo "New versionof $LOCATION: $VERSION"
echo Done.
