#!/bin/bash

# MUST provide 2 args 
# $1 = Path to configtx.yaml   $2 = asOrg  Acme \ Budget

PEER_FABRIC_CFG_PATH=$FABRIC_CFG_PATH

FABRIC_CFG_PATH=./config

configtxgen -outputAnchorPeersUpdate ./config/peer-update.tx   -asOrg $ORG_NAME -channelID airlinechannel  -profile AirlineChannel

FABRIC_CFG_PATH=$PEER_FABRIC_CFG_PATH

peer channel update -f ./config/peer-update.tx -c airlinechannel -o $ORDERER_ADDRESS

