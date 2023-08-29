#!/bin/bash

XMRRIG_DIR="$HOME/Downloads/xmrig-6.20.0"
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

# Load values from the config file
source "$CONFIG_FILE"

# Navigate to the xmrig directory
cd "$XMRRIG_DIR"

# Run xmrig with the specified parameters
./xmrig -o "$POOL_ADDRESS" -u "$WALLET_ID" -a rx/0
