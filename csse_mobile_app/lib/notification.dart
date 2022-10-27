import 'package:flutter/material.dart';

 class NotificationPage extends StatefulWidget {
   const NotificationPage({Key? key}) : super(key: key);

   @override
   State<NotificationPage> createState() => _NotificationPageState();
 }

 class _NotificationPageState extends State<NotificationPage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: ListView(
         children: <Widget>[
           Container(
             color: Colors.orange,
             child: Container(
               decoration: const BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(40.0),
                   topRight: Radius.circular(40.0),
                 ),
                 color: Colors.white,
               ),
               child: Center(
                 child: Column(
                   children: const <Widget>[
                     Text("Notification",style: TextStyle(fontSize: 30.0),),
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }
