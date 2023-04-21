using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace CourseWorkSUBD.MongoConnect
{
    class Connect
    {
        public static IMongoDatabase GetDatabase()
        {
            string connectionString = "mongodb://localhost";
            var client = new MongoClient(connectionString);
            var database = client.GetDatabase("STO_Mongodb");
            return database;
        }
    }
}
