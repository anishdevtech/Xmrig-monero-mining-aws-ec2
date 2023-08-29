#!/bin/bash

# Update and upgrade packages
apt update
apt upgrade -y

# Install required packages
apt install -y git wget proot build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

# Clone the xmrig repository
git clone https://github.com/xmrig/xmrig

# Navigate to the xmrig directory
cd xmrig

# Create a build directory and navigate to it
mkdir build
cd build

# Configure cmake without HWLOC support
cmake -DWITH_HWLOC=OFF ..

# Build xmrig
make

# Return to the xmrig directory
cd ..

# Run xmrig with the specified parameters
./xmrig -o gulf.moneroocean.stream:10001 -u 87R6PxcmJDWDLi4caK8g8A2LzcAumMWw4KqzS9S66w3hcNUmsDnUrFo9FTnoUNjVjxW6auGRP3scPaw18Y3w66m5BqgLGmj -a rx/0
