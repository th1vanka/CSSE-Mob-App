import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back,
                                size: 40.0,
                                color: Colors.redAccent,
                              )),
                          Column(
                            children: [
                              Text(
                                "H-Town Building",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Total : ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)),
                                TextSpan(
                                    text: "Rs 2000000.00",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black)),
                              ]))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60.0
                      ),
                      Text("Fund",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),),
                      SizedBox(
                          height: 20.0
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45.0,
                            width: size.width/2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Colors.black12,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("Bank Transfer",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),textAlign:TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 45.0,
                            width: size.width/2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Colors.black12,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("Visa",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),textAlign:TextAlign.center,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height:20.0
                      ),
                      Text("Comment",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),),
                      SizedBox(
                          height: 20.0
                      ),
                      TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 4,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Type in your text",
                            fillColor: Colors.black12),
                      ),
                      SizedBox(
                          height: 15.0
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent, // Background color
                            ),
                            child: const Text('Order Now',style: TextStyle(fontSize: 18.0),),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 15.0
                      ),
                      Container(
                        width:size.width,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFfcc68f),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                        ),

                      )
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
