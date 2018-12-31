#!/usr/bin/env bash
mongo --eval "sh.addShard('shard1/mongo1:27017')"
mongo --eval "sh.addShard('shard2/mongo4:27017')"
mongo --eval "sh.enableSharding('sensores')"
mongo --eval "sh.shardCollection('sensores.mediciones',{'codigoSensor':1,'fechaHora':1})"
