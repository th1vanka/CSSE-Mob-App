import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget{
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}
class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('H-beam (44 mm)'),
          content: TextField(
            decoration: InputDecoration(
            labelText:
            '''
             Order qty:20
             Received qty:0
             Due date: 20/10/2022
             Receive Qty
            ''',

                hintText: 'Enter your name'
            ),
          ),
          actions: [
            InkWell(
                onTap: (){},
                child: Text('SUBMIT'),
            )
          ],
        ),
    );
    return new Scaffold(
        body: Column(children: <Widget>[
          Center(
            child: Text(
            "HD2172",
            ),
          ),
          Row(
            //ROW 1
            children: [
              Container(
                margin: EdgeInsets.all(25.0),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(253, 238, 206, 1),
                ),
                child: InkWell(
                  
                  child: Text(
                    '''
                     H-beam (44mm)
                     Order qty: 10
                     Received qty: 0
                    '''
                  ),
                  onTap: () {
                    openDialog();
                  },
                ),
              ),
            ],
          ),
          Row( //ROW 2
              children: [
                Container(
                  color: Color.fromRGBO(253, 238, 206, 1),
                  margin: EdgeInsets.all(25.0),
                  width: 300,
                  child: Text(
                    '''
                  Cement (50kg)
                  Order qty : 50
                  Received qty : 0
                  ''',
                  ),
                ),
              ]),
          Row( // ROW 3
              children: [
                Container(
                  color: Color.fromRGBO(253, 238, 206, 1),
                  margin: EdgeInsets.all(25.0),
                  width: 300,
                  child: Text(
                    '''
                  H-beam (44 mm)
                  Order qty : 10
                  Received qty : 0
                  ''',
                  ),
                ),
              ]),
        ]));
    void submit(){
      Navigator.of(context).pop();
    }
  }
}