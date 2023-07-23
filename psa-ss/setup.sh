#!/bin/bash

mkdir -p ./data

for i in {1..4}
do
    DATA_PATH="./data/rs$i"
    echo "Creating directory $DATA_PATH"
    mkdir -p $DATA_PATH
    mongod --replSet testRS --logpath "$DATA_PATH/mongodb.log" --dbpath "$DATA_PATH" --port "2700$i" --fork
done

mkdir -p ./data/arb
mongod --replSet testRS --logpath "./data/arb/mongodb.log" --dbpath "./data/arb" --port "27005" --fork
