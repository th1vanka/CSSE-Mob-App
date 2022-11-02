import 'dart:developer';

import 'package:csse_mobile_app/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';
class MongoDatabase{
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
    await collection.insertOne({
      "orderName" : "H-beam"
    });
    print(await collection.find().toList());
  }
}