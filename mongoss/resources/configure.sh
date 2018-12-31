#!/usr/bin/env bash
#Crear Base de datos y usuario valido
mongo --host mongo1 --port 27017 < sensores.js
mongo --host mongo2 --port 27017 < sensores.js
mongo --host mongo3 --port 27017 < sensores.js
mongo --host mongo4 --port 27017 < sensores.js
mongo --host mongo5 --port 27017 < sensores.js
mongo --host mongo6 --port 27017 < sensores.js
#Inicializar el conjunto de replica 1 (shard1)
mongo --host mongo1 --port 27017 --eval "rs.initiate()"
mongo --host mongo1 --port 27017 --eval "rs.add('mongo2:27017')"
mongo --host mongo1 --port 27017 --eval "rs.add('mongo3:27017')"
mongo --host mongo1 --port 27017 --eval "rs.status()"
#Inicializar el conjunto de replica 2  (shard2)
mongo --host mongo4 --port 27017 --eval "rs.initiate()"
mongo --host mongo4 --port 27017 --eval "rs.add('mongo5:27017')"
mongo --host mongo4 --port 27017 --eval "rs.add('mongo6:27017')"
mongo --host mongo4 --port 27017 --eval "rs.status()"
#Inicializar el conjunto de replica para el config server
mongo --host config1 --port 27019 --eval "rs.initiate()"
mongo --host config1 --port 27019 --eval "rs.add('config2:27019')"
mongo --host config1 --port 27019 --eval "rs.add('config3:27019')"
mongo --host config1 --port 27019 --eval "rs.status()"
