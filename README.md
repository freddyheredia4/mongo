# MongoDB Escalable

Plataforma de prueba para base de datos MongoDB con Replicación y Particionamiento.

## Tech Stack

- docker 18.09.0
- docker-compose 1.23.2
- Para el S.O Se uso: stretch:lastest
- MongoDB Version:mongodb-org 4.0

## Puesta en marcha

Crear la base mongo de la cual se instancian cada contenedor

```
$ make base
```

Crear los contenedores y levantarlos en segundo plano

```
$ make upd
```
Conectarse al contenedor mongoss
```
$ docker ps
$ docker exec -it <Contenedor ID> bash
```
Crear las base de datos

```
$ mongo --host mongo1 --port 27017 < sensores.js
$ mongo --host mongo4 --port 27017 < sensores.js
```

Inicializar el Sharding
```
$ sh init_shards.sh
```
Insertar data de Ejemplo
```
$ mongo < data.js
```
Loguearse

mongo
use sensores
db.auth('yogle','herrera')