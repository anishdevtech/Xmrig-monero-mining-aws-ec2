#!/bin/bash

XMRRIG_VERSION="6.20.0"
XMRRIG_DIR="$HOME/xmrig-$XMRRIG_VERSION"
CONFIG_FILE="$HOME/.xmrig_config"

# Check if the config file exists, if not, prompt for values
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Welcome to xmrig setup!"
    read -p "Enter your Monero wallet ID: " wallet_id
    read -p "Enter the pool address (e.g., gulf.moneroocean.stream:10032): " pool_address

    # Save values to the config file
    echo "WALLET_ID=$wallet_id" > "$CONFIG_FILE"
    echo "POOL_ADDRESS=$pool_address" >> "$CONFIG_FILE"
fi

echo "XMRig setup completed. You can now run './start_xmrig.sh'."
