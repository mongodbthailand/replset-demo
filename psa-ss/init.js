rs.initiate(
    {
       _id: "testRS",
       version: 1,
       members: [
          { _id: 0, host : "localhost:27001", priority: 2 },
          { _id: 1, host : "localhost:27002", priority: 2 },
          { _id: 2, host : "localhost:27003", priority: 1 },
          { _id: 3, host : "localhost:27004", priority: 1},
          { _id: 4, host : "localhost:27005", arbiterOnly: true }
       ]
    }
 )