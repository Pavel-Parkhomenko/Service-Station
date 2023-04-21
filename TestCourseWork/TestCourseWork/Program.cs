using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace TestCourseWork
{
    class Program
    {
        static void Main(string[] args)
        {
            //string connectionString = "mongodb://localhost:27017";
            //MongoClient client = new MongoClient(connectionString);
            //IMongoDatabase database = client.GetDatabase("TestCourseWork");

            //IMongoCollection<BsonDocument> cols = database.GetCollection<BsonDocument>("Orders");

            FindDocs().GetAwaiter().GetResult();

            Console.ReadLine();
        }

        private static async Task FindDocs()
        {
            string connectionString = "mongodb://localhost";
            var client = new MongoClient(connectionString);
            var database = client.GetDatabase("TestCourseWork");
            var collection = database.GetCollection<BsonDocument>("Orders");
            var filter = new BsonDocument();
            var people = await collection.Find(filter).ToListAsync();
            foreach (var doc in people)
            {
                Console.WriteLine(doc);
            }
        }

        private static async Task GetCollectionsNames(MongoClient client)
        {
            using (var cursor = await client.ListDatabasesAsync())
            {
                var dbs = await cursor.ToListAsync();
                foreach (var db in dbs)
                {
                    
                    Console.WriteLine("В базе данных {0} имеются следующие коллекции:", db["name"]);

                    IMongoDatabase database = client.GetDatabase(db["name"].ToString());

                    using (var collCursor = await database.ListCollectionsAsync())
                    {
                        var colls = await collCursor.ToListAsync();
                        foreach (var col in colls)
                        {
                            Console.WriteLine(col["name"]);
                        }
                    }
                    Console.WriteLine();
                }
            }
        }
    }
}
