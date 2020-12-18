#!/bin/bash

# start first node and open http(rpc) port for control
sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_0 --networkid 4869 --port 30000 --netrestrict 140.113.216.0/24 --http --http.addr 140.113.216.75 --http.port 40000 --http.api \"eth,net,web3,personal,miner,admin\" --allow-insecure-unlock"

# --netrestrict 140.113.216.0/27
read -n 1 -r -s -p $'Press enter to continue...\n'


# attach to Node_0's console 
sudo gnome-terminal -- bash -c "geth attach http://140.113.216.75:40000"


# start Node_1 to Node_3 with console
sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_1 --networkid 4869 --port 30001 --netrestrict 140.113.216.0/24 console --bootnodes enode://cee14e2b1a8f7d59a0e2a03b7b4d51dc605746aa6b86f6357cd2ea29d09f9ff7bb1f4c8f27f0d7639e44be28232b9139f7792c788fb1a8ce8147d5073d6391d8@140.113.216.75:30000"

sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_2 --networkid 4869 --port 30002 --netrestrict 140.113.216.0/24 console --bootnodes \" enode://cee14e2b1a8f7d59a0e2a03b7b4d51dc605746aa6b86f6357cd2ea29d09f9ff7bb1f4c8f27f0d7639e44be28232b9139f7792c788fb1a8ce8147d5073d6391d8@140.113.216.75:30000, enode://dc3044385962f723b672dcc0fb64fa02f1efd48d5f22188e0f6f7eb7a87c690657a4385e855300c025a400868e130308de5991fca9604d5ce128593f1e0c44d3@140.113.216.75:30001\" "

sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_3 --networkid 4869 --port 30003 --netrestrict 140.113.216.0/24 console --bootnodes \" enode://cee14e2b1a8f7d59a0e2a03b7b4d51dc605746aa6b86f6357cd2ea29d09f9ff7bb1f4c8f27f0d7639e44be28232b9139f7792c788fb1a8ce8147d5073d6391d8@140.113.216.75:30000, enode://dc3044385962f723b672dcc0fb64fa02f1efd48d5f22188e0f6f7eb7a87c690657a4385e855300c025a400868e130308de5991fca9604d5ce128593f1e0c44d3@140.113.216.75:30001, enode://acae47ae0e387b22ca3878c4c2db3c50f65cd23213cabc7e6ed82c19a93ea2c3fd3d4ee118a5ca07711b859566428059118ef762561956a19f470e7a56786b4d@140.113.216.75:30002\" "


# start other node without console
# sudo gnome-terminal -- bash -c "geth --datadir go-ethereum/Node_4 --networkid 4869 --port 30004 --bootnodes enode://957062b0327d106bc40d383ae18b558ae125c4f26d3b59926e6594a7e3e8ae3050cf3ace5093c25963e279931e01961ebba3f1aa5b9b8fb0c2f6209a987754a4@140.113.216.75:30000"
