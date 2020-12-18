#!/bin/bash
# start first node and open http(rpc) port for control
sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_0 --networkid 4869 --port 30000 --netrestrict 140.113.216.0/24 --http --http.addr 140.113.216.75 --http.port 40000 --http.api \"eth,net,web3,personal,miner,admin\" --allow-insecure-unlock"

# --netrestrict 140.113.216.0/27
#read -n 1 -r -s -p $'Press enter to continue...\n'

# attach to Node_0's console and mine
sudo gnome-terminal -- bash -c "sudo expect Node_0.exp"

# start Node_1 to Node_3 with console and mine
sudo gnome-terminal -- bash -c "sudo expect Node_1.exp"
sudo gnome-terminal -- bash -c "sudo expect Node_2.exp"
sudo gnome-terminal -- bash -c "sudo expect Node_3.exp"
#sudo gnome-terminal -- bash -c "sudo expect Node_4.exp"
