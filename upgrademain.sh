#!/bin/bash
cd $HOME
wget -O kyved https://github.com/KYVENetwork/chain/releases/download/v2.0.0/kyved_mainnet_linux_amd64
chmod +x kyved
mv kyved $(which kyved)
kyved version

systemctl restart kyved && journalctl -fu kyved -o cat
