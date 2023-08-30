
# XMRig Mining Setup Script

This script simplifies the setup and running of the XMRig Monero miner.

## Prerequisites

- Linux system
- Internet connection

## Step 1: Download, Setup, and Start

1. Clone or download this repository to your system:
  ```
 git clone https://github.com/anishdevtech/Xmrig-monero-mining-aws-ec2/
  ```

3. Open a terminal and navigate to the downloaded directory:
   ```
   cd Xmrig-monero-mining-aws-ec2
   ```

4. Run the setup script to create a configuration file with your Monero wallet ID and pool address, and download XMRig:
   ```
   ./xmrig_setup.sh
   ```

5. Run the start script to begin mining using the configured wallet ID and pool address:
   ```
   ./xmrig_start.sh
   ```

6. Adjust Configuration (Optional):
   If you want to change your Monero wallet ID or pool address in the future, simply edit the `.xmrig_config` file in your home directory.

## Disclaimer

This script is provided as-is and comes with no warranties. Mining cryptocurrencies can be resource-intensive and may impact system performance. Use this script responsibly and ensure you have the necessary permissions to run mining software on your system.

## License

This script is licensed under the MIT License. Feel free to modify and distribute it according to the terms of the license.

For more information about XMRig, visit the official repository: [xmrig/xmrig](https://github.com/xmrig/xmrig)
