import 'package:flutter/material.dart';

 class CategoryPage extends StatefulWidget {
   const CategoryPage({Key? key}) : super(key: key);

   @override
   State<CategoryPage> createState() => _CategoryPageState();
 }

 class _CategoryPageState extends State<CategoryPage> {
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
                     Text("Category",style: TextStyle(fontSize: 30.0),),

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
