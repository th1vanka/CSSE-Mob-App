// To parse this JSON data, do
//
//     final mongoDbModel1 = mongoDbModel1FromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel1 mongoDbModel1FromJson(String str) => MongoDbModel1.fromJson(json.decode(str));

String mongoDbModel1ToJson(MongoDbModel1 data) => json.encode(data.toJson());

class MongoDbModel1 {
  MongoDbModel1({
    required this.id,
    required this.orderID,
    required this.email,
    required this.inquiry,
  });

  ObjectId id;
  String orderID;
  String email;
  String inquiry;

  factory MongoDbModel1.fromJson(Map<String, dynamic> json) => MongoDbModel1(
    id: json["_id"],
    orderID: json["orderID"],
    email: json["email"],
    inquiry: json["inquiry"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "OrderID": orderID,
    "email": email,
    "inquiry": inquiry,
  };
}


