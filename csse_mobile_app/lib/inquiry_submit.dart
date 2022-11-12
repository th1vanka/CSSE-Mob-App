import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'package:csse_mobile_app/dbHelper/mongodb.dart';
import 'package:csse_mobile_app/MongoDBModel1.dart';

class InquirySubmit extends StatefulWidget {
  InquirySubmit({Key? key}) : super(key: key);

  @override
  State<InquirySubmit> createState() => _InquirySubmitState();
}

class _InquirySubmitState extends State<InquirySubmit> {
  var fnameController = new TextEditingController();
  var lnameController = new TextEditingController();
  var addressController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Center(
                child: Text(
                  "Order Inquiry",
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: fnameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.orange,
                    ),
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
                height: 20,
              ),
              TextField(
                controller: lnameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.orange,
                    ),
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                    ),
                    hintText: 'Contact Details'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: addressController,
                minLines: 3,
                maxLines: 5,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.orange,
                    ),
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
                height: 50,
              ),
              // Row(
              //   //mainAxisAlignment: mainAxisAligment.spaceBetween,
              //   children: [
              //     /* OutlinedButton(onPressed: () {
              //     _fakeData();
              //   }, child: Text("demo")) */
              //     ElevatedButton(
              //         onPressed: () {
              //           _insertData(fnameController.text, lnameController.text,
              //               addressController.text);
              //         },
              //         child: Text("Submit"))
              //   ],
              // ),
              SizedBox(
                width: size.width/3,
                height: size.width/8,
                child: ElevatedButton(
                  onPressed: () {
                    _insertData(fnameController.text, lnameController.text,
                        addressController.text);
                  },

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    primary: Colors.black87, // Background color
                  ),
                  child: const Text('Submit',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _insertData(String iOrder, String iEmail, String iQ) async {
    var _id = M.ObjectId();
    final data = MongoDbModel1(
      id: _id,
      orderID: iOrder,
      email: iEmail,
      inquiry: iQ,
    );
    var result = await MongoDatabase.insert(data);
    ScaffoldMessenger.of(context)
        //.showSnackBar(SnackBar(content: Text("insert ID" + _id.$oid)));
        .showSnackBar(SnackBar(content: Text("Inquiry data succesfully Added" )));
    _clearAll();
  }

  void _clearAll() {
    fnameController.text = "";
    lnameController.text = "";
    addressController.text = "";
  }

  void _fakeData() {
    setState(() {
      // fnameController.text= faker.person.firstName();
      //lnameController.text= faker.internet.email();
      // addressController.text=
      //   faker.address.streetAddress() + "\n" + faker.address.streetAddress();
    });
  }
}
