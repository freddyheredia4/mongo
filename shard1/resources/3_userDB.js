use admin
db.auth('sensorAdmin','123456')
use sensores
db.createUser({
    user: "yogle",
    pwd: "herrera",
    roles: [ { role: "dbOwner", db:"sensores"}]});