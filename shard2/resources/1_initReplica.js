rs.initiate(
  {
    _id : "shard2",
    members: [
      { _id : 0, host : "mongo4:27017" },
      { _id : 1, host : "mongo5:27017" },
      { _id : 2, host : "mongo6:27017" }
    ]
  }
)