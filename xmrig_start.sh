#!/bin/bash

CONFIG_FILE="$HOME/.xmrig_config"

# Load values from the config file
source "$CONFIG_FILE"

# Navigate to the xmrig directory
cd "$XMRRIG_DIR"

# Run xmrig with the specified parameters
./xmrig -o "$POOL_ADDRESS" -u "$WALLET_ID" -a rx/0
