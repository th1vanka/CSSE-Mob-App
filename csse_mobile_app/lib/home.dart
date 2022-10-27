import 'package:flutter/material.dart';

 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

   @override
   State<Home> createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
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
                     Text("Home",style: TextStyle(fontSize: 30.0),),
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
     );;
   }
 }
