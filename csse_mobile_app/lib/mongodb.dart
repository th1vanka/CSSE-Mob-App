import 'dart:developer';

import 'package:csse_mobile_app/constant.dart';
import 'package:csse_mobile_app/models/order_model.dart';
import 'package:mongo_dart/mongo_dart.dart';
class MongoDatabase{
  static var collection;
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    collection = db.collection(COLLECTION_NAME);
    print(await collection.find().toList());
  }

  static Future<List<Map<String, dynamic>>> getData() async{
    final arrData = await collection.find().toList();
    return arrData;
  }

  static Future<String> insert(MongoDbModel data) async{
    try{
      var result = await collection.insertOne(data.toJson());
      if(result.isSuccess){
        return "Data inserted successfully";
      } else {
        return "Something went wrong while inserting data.";
      }
    } catch(e){
      print(e.toString());
      return e.toString();
    }
  }
}