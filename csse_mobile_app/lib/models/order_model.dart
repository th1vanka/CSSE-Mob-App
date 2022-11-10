// To parse this JSON data, do
//
//     final mongoDbModel = mongoDbModelFromJson(jsonString);

import 'dart:convert';

MongoDbModel mongoDbModelFromJson(String str) => MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.itemName,
    required this.orderQty,
    required this.receivedQty,
    required this.dueDate,
  });

  String itemName;
  String orderQty;
  String receivedQty;
  String dueDate;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
    itemName: json["itemName"],
    orderQty: json["orderQty"],
    receivedQty: json["receivedQty"],
    dueDate: json["dueDate"],
  );

  Map<String, dynamic> toJson() => {
    "itemName": itemName,
    "orderQty": orderQty,
    "receivedQty": receivedQty,
    "dueDate": dueDate,
  };
}