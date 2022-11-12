import 'package:csse_mobile_app/insert.dart';
import 'package:csse_mobile_app/models/order_model.dart';
import 'package:csse_mobile_app/mongodb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

class OrderDetailsPage extends StatefulWidget{
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}
class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder(
            future: MongoDatabase.getData(),
            builder: (context, AsyncSnapshot snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else{
                if(snapshot.hasData){
                  var totalData = snapshot.data.length;
                  print("Total Data" + totalData.toString());
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return displayCard(
                            MongoDbModel.fromJson(
                                snapshot.data[index]));
                });
                } else{
                   return Center(
                      child: Text("No data available"),
                   );
                  }
              }
            }
          ),
        ),
      ),
    );
  }

  Widget displayCard(MongoDbModel data){
    return Column(
      children: [
        Title(
            color: Colors.black,
            child: Text(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                "#HD2172 -JN (Pvt) Ltd"
            ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 10
              ),
              child: Text("Order Date - ${data.dueDate}"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 100
              ),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(211, 107, 107, 1),
                ),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Not Received"
                  )
              ),
            )
          ],
        ),
        InkWell(
            onTap: () {
              openDialog(context);
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(253, 238, 206, 1),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 180, top: 5),
                          child: Text("Due date - ${data.dueDate}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("${data.itemName}"),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Order Qty: ${data.orderQty}"),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Received Qty: ${data.receivedQty}"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
        ButtonBar(
          children: <Widget>[
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
                    style: TextStyle(
                      color: Colors.white
                    ),
                    "Receive")
            )
          ],
        )
      ]
    );
  }
}
Future<void> openDialog(BuildContext context) async {
  final TextEditingController controller = TextEditingController();
  Widget displayCard(MongoDbModel data){
    return AlertDialog(
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40,
                          bottom: 20
                      ),
                      child: new Title(
                        color: Colors.black,
                        child: Text("${data.itemName}")
                      ),
                    ),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  new Flexible(
                    child: new Text(
                        "Order qty : ${data.orderQty}"
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
                          "Received qty: ${data.receivedQty}"
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
                          "Due date: ${data.dueDate}"
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
            if (_formKey2.currentState!.validate()) {
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
                onPressed: () {
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
                onPressed: () {},
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
  }

  return await showDialog(
      context: context,
      builder: (context) {
        final controller = TextEditingController();
        bool isChecked = false;
        return FutureBuilder(
            future: MongoDatabase.getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (snapshot.hasData) {
                  var totalData = snapshot.data.length;
                  print("Total Data" + totalData.toString());
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return displayCard(
                            MongoDbModel.fromJson(
                                snapshot.data[index])
                        );
                      });
                }

                return AlertDialog(
                  content: Form(
                    key: _formKey1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                            children: <Widget>[
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
                            onPressed: () {
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
                            onPressed: () {},
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
              }
            });
      });
}

Future<void> openDialogReturn(BuildContext context) async{
  var freasonController = TextEditingController();

  return await showDialog(
      context: context,
      builder: (context) {
        final TextEditingController _textEditingController = TextEditingController();
        bool isChecked = false;
        return StatefulBuilder(builder: (context, setState) {

          Future<void> _insertData(String orderName, orderQuantity, receivedQuantity, dueDate) async{
            var _id = M.ObjectId();
            final data = MongoDbModel(itemName: orderName, orderQty: orderQuantity, receivedQty: receivedQuantity, dueDate: dueDate, rejectReason: '');
            var result = await MongoDatabase.insert(data);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Inserted ID " + _id.$oid)));
          }
          return AlertDialog(
            content: Form(
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
                        child: new TextField(
                          controller: freasonController,
                            decoration: InputDecoration(
                            labelText: "Reject Reason"
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              InkWell(
                onTap: () {

                },
                child: ButtonBar(
                  children: <Widget>[
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        backgroundColor: Color.fromRGBO(211, 107, 107, 1),
                        side: BorderSide(width: 2, color: Colors.grey),
                      ),
                      onPressed: (){

                      },
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
  /*
   Padding(
  padding: const EdgeInsets.all(15.0),
  child: Container(
  child: InkWell(
  onTap: () async{
  await openDialog(context);
},
),
),
),
Container()
child: Container(
width: 300,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
color: Color.fromRGBO(253, 238, 206, 1),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(left: 180, top: 5),
child: Text("Due date - ${data.dueDate}"),
),
Padding(
padding: const EdgeInsets.only(left: 5),
child: Text("${data.itemName}"),
),
SizedBox(height: 5,),
Padding(
padding: const EdgeInsets.only(left: 5),
child: Text("Order Qty: ${data.orderQty}"),
),
SizedBox(height: 5,),
Padding(
padding: const EdgeInsets.only(left: 5),
child: Text("Received Qty: ${data.receivedQty}"),
),
SizedBox(height: 5,),
],
),
),
));
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


    }*/
