#!/bin/bash

for i in {1..2}
do
    DATA_PATH="./data/rs$i"
    mongod --replSet testRS --logpath "$DATA_PATH/mongodb.log" --dbpath "$DATA_PATH" --port "2700$i" --fork
done
mongod --replSet testRS --logpath "./data/arb/mongodb.log" --dbpath "./data/arb" --port "27005" --fork
sleep 10
mongosh "mongodb://localhost:27001,localhost:27002,localhost:27003,localhost:27004/?replicaSet=testRS" dc_config.js 