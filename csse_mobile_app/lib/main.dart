import 'package:csse_mobile_app/dbHelper/mongodb.dart';
import 'package:csse_mobile_app/home.dart';
import 'package:csse_mobile_app/inquiry.dart';
import 'package:csse_mobile_app/login.dart';
import 'package:csse_mobile_app/Supplier_list.dart';
import 'package:csse_mobile_app/new_order.dart';
import 'package:csse_mobile_app/new_supplier.dart';
import 'package:csse_mobile_app/place_order.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CSSE",
      home: SignIn(),
    );
  }
}


