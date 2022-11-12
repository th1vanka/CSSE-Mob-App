import 'package:flutter/material.dart';

class SupplierList extends StatefulWidget {
  const SupplierList({Key? key}) : super(key: key);

  @override
  State<SupplierList> createState() => _SupplierListState();
}

class _SupplierListState extends State<SupplierList> {
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children:<Widget>[
                      component("JN (Pvt) Ltd"),
                      component("PG- Suppliers"),
                      component("Sand (Pvt) Ltd"),
                      component("GOV (Pvt) Ltd"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget component(String data) {
  return Container(
    margin: new EdgeInsets.only(top: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFFfcc68f),
    ),

    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$data",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text("jnconstruction@gmail.com"),
          SizedBox(
            height: 8.0,
          ),
          Text("+94- 717475188"),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.end,
            children: [
              Text("Malabe-Kandy Road, Colombo 13",maxLines: 2,),
            ],
          ),

        ],
      ),
    ),
  );
}
