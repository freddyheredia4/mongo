use admin
db.createUser({
	user:"sensorAdmin",
	pwd: "123456",
	roles:[
		"clusterAdmin",
		"readAnyDatabase",
		"readWriteAnyDatabase",
		"userAdminAnyDatabase",
		"dbAdminAnyDatabase"
	]
});