import "/nav_bar.dart";
import "package:flutter/material.dart";

import 'mongodb.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSSE",
      home: OrderDetails(),
    );
  }
}


