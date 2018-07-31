#!/bin/sh

for i in {0..9}
do
    pm2 start websocket-relay.js --node-args="nodeflux 808$i 909$i" --name="relay-$i"
done