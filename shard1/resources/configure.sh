#!/usr/bin/env bash
# Este archivo solo debe ser ejecutado si los otros servidores mongo ya estan activos
mongo < 1_initReplica.js
mongo < 2_userAdmin.js
mongo < 3_userDB.js
mongo < 4_createDB.js