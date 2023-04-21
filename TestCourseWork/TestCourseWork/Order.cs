using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Text;

namespace TestCourseWork
{
    class Order
    {
        [BsonId]
        public int id { get; set; }
        string DateRegistr { get; set; }
        string Payment { get; set; }
    }
}
