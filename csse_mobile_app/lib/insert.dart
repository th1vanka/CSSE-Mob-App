import 'package:csse_mobile_app/models/order_model.dart';
import 'package:csse_mobile_app/mongodb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class MongoDBInsert extends StatefulWidget{
  MongoDBInsert({Key? key}) : super(key: key);

  @override
  _MongoDBInsertState createState() => _MongoDBInsertState();
}

class _MongoDBInsertState extends State<MongoDBInsert>{
  var fnameController = new TextEditingController();
  var fqtyController = new TextEditingController();
  var frqtyController = new TextEditingController();
  var fdateController = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Insert Data',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 50),
              TextField(
                controller: fnameController,
                decoration: InputDecoration(labelText: "Order Name"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: fqtyController,
                decoration: InputDecoration(labelText: "Order Qty"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: frqtyController,
                decoration: InputDecoration(labelText: "Received Qty"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: fdateController,
                decoration: InputDecoration(labelText: "Due date"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("Generate data")),
                  ElevatedButton(onPressed: (){_insertData(fnameController.text, fqtyController.text, frqtyController.text, fdateController.text);}, child: Text("Insert data"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _insertData(String orderName, orderQuantity, receivedQuantity, dueDate) async{
    var _id = M.ObjectId();
    final data = MongoDbModel(itemName: orderName, orderQty: orderQuantity, receivedQty: receivedQuantity, dueDate: dueDate);
    var result = await MongoDatabase.insert(data);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Inserted ID " + _id.$oid)));
    _clearAll();
  }

  void _clearAll(){
    fnameController.text = "";
    fdateController.text = "";
    frqtyController.text = "";
    fqtyController.text = "";
  }
}