# Noted

## Start
```bash
./setup.sh
```

## Init
```bash
mongosh "mongodb://localhost:27001" init.js
```

## Connect
```bash
mongosh "mongodb://localhost:27001,localhost:27002,localhost:27003,localhost:27004/?replicaSet=testRS"
```

## Run inside Mongo Shell
```js
use admin;
db.adminCommand({
  "setDefaultRWConcern" : 1,
  "defaultWriteConcern" : {
    "w" : 1
  }
});
```

## Run inside Mongo Shell
```js
let a = [];
for(i=0;i<10;i++){
    a.push({"data": "Data"+i});
}
db.tester.insertMany(a);
```

## Kill PSA (DC) Keep SS (DR)

## Force S to P in Mongo Shell on DR
```bash
mongosh "mongodb://localhost:27004" force.js 
```

## Run inside Mongo Shell
```js
let a = [];
for(i=10;i<20;i++){
    a.push({"data": "Data"+i});
}
db.tester.insertMany(a);
```

## DC UP
```bash
./dc_up.sh
```

## Kill
```bash
pkill mongod
rm -R ./data/*
```