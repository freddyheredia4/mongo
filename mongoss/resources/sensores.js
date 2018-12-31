
admin = db.getSiblingDB("admin")
admin.createUser( { user: "sensorAdmin",
                 pwd: "123456",
                 roles:[{
                    "clusterAdmin",
                    "readAnyDatabase",
                    "readWriteAnyDatabase",
                    "userAdminAnyDatabase",
                    "dbAdminAnyDatabase",
                     db: "admin"}] });

use sensores
db.createUser({
    user: "yogle",
    pwd: "herrera",
    roles: [ { role: "dbOwner", db:"sensores"}]});
db.createCollection('mediciones');
db.mediciones.ensureIndex({"codigoSensor":1,"fechaHora":1,"ubicacion":1});
db.mediciones.ensureIndex({"codigoSensor":1,"fechaHora":1});

db.getSiblingDB("sensores").auth("yogle", "herrera" )
mongo -u "fred" -p "changeme1" --authenticationDatabase "admin"

db.getSiblingDB("admin").createUser(
  {
    "user" : "ravi",
    "pwd" : "changeme2",
    roles: [ { "role" : "clusterAdmin", "db" : "admin" } ]
  }
)