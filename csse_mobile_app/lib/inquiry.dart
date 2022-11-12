/*

import 'package:csse_mobile_app/MongoDBModel1.dart';
import 'package:csse_mobile_app/dbHelper/mongodb.dart';
import 'package:csse_mobile_app/home.dart';
import 'package:flutter/material.dart';
import 'package:csse_mobile_app/nav_bar.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

//done
class Inquiry extends StatefulWidget {
  const Inquiry({Key? key}) : super(key: key);

  @override
  State<Inquiry> createState() => _InquiryState();
}

class _InquiryState extends State<Inquiry> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: '',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                    TextSpan(
                        text: 'Order Inquiry',

                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height:size.width/10,
              ),
              Padding(
                padding:EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children:[

                    // 1 label
                    const TextField(
                      decoration: InputDecoration(


                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 16.0,

                          ),
                          hintText: 'Order ID'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),



                    // 2 label

                    const TextField(

                      decoration: InputDecoration(


                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 16.0,
                          ),
                          hintText: 'Contact Number'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),

                    // 3 label
                    const TextField(

                      decoration: InputDecoration(


                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 16.0,
                          ),
                          hintText: 'Inquiry'),
                    ),
                    SizedBox(
                      height:size.width/10,

                    ),


                    SizedBox(
                      width: size.width/1,
                      height: size.width/7,
                      child: ElevatedButton(
                        // error
                        onPressed: () {
                          var fnameController,lnameController,addressController;

                          _insertData(fnameController.text, lnameController.text, addressController.text);
                        },

                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          primary: Colors.orange, // Background color
                        ),
                        child: const Text('Submit',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(
                      height:6.0,
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _insertData(String fName, String lName, String address)
  async{
   var _id=M.ObjectId();
   final data= MongoDbModel1(id: _id, firstName: fName, lastName: lName, address: address);
   var result = await MongoDatabase.insert(data);
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("insert ID"+ _id.$oid)));
  }

  void _clearAll(){
    var fnameController;
    var lnameController;
    var addressController;
    fnameController.text= "";
    lnameController.text= "";
    addressController.text= "";
  }

}
*/