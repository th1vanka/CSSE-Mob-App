import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget{
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}
class _OrderDetailsPageState extends State<OrderDetailsPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> openDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final controller = TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children : <Widget> [
                         Center(
                         child: Padding(
                           padding: const EdgeInsets.only(
                             left: 40,
                             bottom: 20
                           ),
                           child: new Title(
                               color: Colors.black,
                               child: Text(
                                   "H-beam (44mm)"
                               ),
                           ),
                         ),
                        ),
                      ]
                    ),
                    Row(
                      children: <Widget>[
                        new Flexible(
                            child: new Text(
                               "Order qty : 20"
                            ),
                        ),
                      ]
                    ),
                    Row(
                      children: <Widget>[
                        new Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10
                              ),
                              child: new Text(
                                 "Received qty:0"
                              ),
                            )
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10
                              ),
                              child: new Text(
                                 "Due date: 20/10/2022"
                              ),
                            )
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Flexible(
                            child: new Text(
                               "Receive Qty"
                            ),
                        ),
                        Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: new TextField(
                                controller: controller,
                                  decoration: InputDecoration(

                                    hintText: "Quantity"
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: ButtonBar(
                    children: <Widget>[
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          backgroundColor: Color.fromRGBO(153, 153, 153, 1),
                          side: BorderSide(width: 2, color: Colors.grey),
                        ),
                        onPressed: (){
                          openDialogReturn(context);
                        },
                        child: Text(
                            "Return",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          backgroundColor: Color.fromRGBO(211, 107, 107, 1),
                          side: BorderSide(width: 2, color: Colors.grey),
                        ),
                        onPressed: (){},
                        child: Text(
                            "Update",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                )
              ],
            );
          });
        });
  }

  Future<void> openDialogReturn(BuildContext context) async{
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController = TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children : <Widget> [
                         Center(
                         child: Padding(
                           padding: const EdgeInsets.only(
                             left: 40,
                             bottom: 20
                           ),
                           child: new Title(
                               color: Colors.black,
                               child: Text(
                                   "#HD2172"
                               ),
                           ),
                         ),
                        ),
                      ]
                    ),
                Row(
                  children: <Widget>[
                    new Flexible(
                        child: new Text(
                           "Reject Reason"
                        ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: new TextField(
                              decoration: InputDecoration(
                                  hintText: "Reject Reason"
                              )
                          ),
                        )
                    ),
                  ],
                ),
               ],
             ),
           ),
           actions: <Widget>[
             InkWell(
               onTap: () {
                 if (_formKey.currentState!.validate()) {
                   Navigator.of(context).pop();
                 }
               },
               child: ButtonBar(
                 children: <Widget>[
                   OutlinedButton(
                     style: OutlinedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18),
                       ),
                       backgroundColor: Color.fromRGBO(153, 153, 153, 1),
                       side: BorderSide(width: 2, color: Colors.grey),
                     ),
                     onPressed: (){},
                     child: Text(
                         "Confirm",
                       style: TextStyle(color: Colors.white),
                     ),
                   ),
                 ],
               ),
             )
           ],
         );
       });
     });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10
                ),
                child: Title(
                    color: Colors.black,
                    child: Text(
                      "#HD2712 - JN (Pvt) Ltd",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                ),
              ),
              Text(
                "Order data - 20/10/2022"
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20
                  ),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(253, 238, 206, 1),
                  ),

                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () async{
                          await openDialog(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10
                          ),
                          child: Text(
                            '''
                            H-beam (44 mm)
                            Order Qty : 10
                            Received Qty : 0
                            '''
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 5
                  ),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(253, 238, 206, 1),
                  ),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () async{
                          await openDialog(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10
                          ),
                          child: Text(
                            '''
                            Cement (50 kg)
                            Order Qty : 50
                            Received Qty : 0
                            '''
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0
                ),
                child: Container(
                  margin: EdgeInsets.all(25.0),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(253, 238, 206, 1),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 0
                        ),
                        child: InkWell(
                          onTap: () async{
                            await openDialog(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10
                            ),
                            child: Text(
                              '''
                              H-beam (44 mm)
                              Order qty : 10
                              Received qty : 0
                              '''
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      );
    }
}