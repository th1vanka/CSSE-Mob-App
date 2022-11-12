import 'package:flutter/material.dart';
import 'package:csse_mobile_app/nav_bar.dart';

class NewSupplier extends StatefulWidget {
  const NewSupplier({Key? key}) : super(key: key);

  @override
  State<NewSupplier> createState() => _NewSupplierState();
}

class _NewSupplierState extends State<NewSupplier> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Container(
        color: Colors.orange,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
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
                        text: 'New Supplier',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height:size.width/5,
              ),
              Padding(
                padding:EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children:[
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
                          hintText: 'Enter Supplier Name'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),

                    //2 label
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
                          hintText: 'Email'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),

                    //3 label
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
                          hintText: 'Contact Details'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),

                    //4 label
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
                          hintText: 'Enter Type'),
                    ),
                    SizedBox(
                      height:size.width/8,
                    ),


                    SizedBox(
                      width: size.width/2,
                      height: size.width/6,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return OrderDetails();
                          }));
                        },

                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          primary: Colors.black87, // Background color
                        ),
                        child: const Text('Add',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
}
