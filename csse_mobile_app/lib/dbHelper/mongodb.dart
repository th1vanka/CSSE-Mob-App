import 'dart:developer';

import 'package:csse_mobile_app/MongoDBModel1.dart';
import 'package:csse_mobile_app/dbHelper/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';


class MongoDatabase{
  static var db, userCollection;
  static connect() async{
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection= db.collection(USER_COLLECTION);

  }

  static Future<String> insert(MongoDbModel1 data) async{
    try{
        var result = await userCollection.insertOne(data.toJson());
        if(result.isSuccess){
          return "data Inserted";
        }else{
          return "something wrong ";
        }

    }catch(e){
      print(e.toString());
      return e.toString();

    }
  }
}



