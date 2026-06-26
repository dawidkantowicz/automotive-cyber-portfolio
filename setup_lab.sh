#!/bin/bash
sudo apt install -y can-utils wireshark git python3-pip
python3 -m venv ~/automotive-env
source ~/automotive-env/bin/activate
pip install python-can scapy cantools udsoncan
sudo modprobe vcan
sudo ip link add dev vcan0 type vcan
sudo ip link set up vcan0
echo "vcan" | sudo tee /etc/modules-load.d/vcan.conf
echo "Lab ready"
