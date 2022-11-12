import 'package:flutter/material.dart';
import 'package:csse_mobile_app/nav_bar.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
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
                          text: ' Create New Order',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  height:size.width/7,
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
                            hintText: 'Enter Items'),
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
                            hintText: 'Amount'),
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
                            hintText: 'Contact Details'),
                      ),
                      SizedBox(
                        height:size.width/20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password,color: Colors.orange,),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            hintStyle: TextStyle(
                              color: Colors.orange,
                              fontSize: 16.0,
                            ),
                            hintText: 'Enter Your Password...'),
                      ),
                      SizedBox(
                        height:size.width/7,
                      ),

                      SizedBox(
                        width: size.width,
                        height: size.width/8,
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
                          child: const Text('Sign Up',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
