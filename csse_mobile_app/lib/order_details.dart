import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:Column(children: <Widget>[
          Center(
            child: Text(
              '''
              HD2172
              '''
            ),
          ),
          Row(
            //ROW 1
            children: [
              Container(
                color: Color.fromRGBO(253, 238, 206, 1),
                margin: EdgeInsets.all(25.0),
                width: 300,
                child: Text(
                  '''
                  H-beam
                  Order qty : 10
                  Received qty : 0
                  ''',
                ),
              ),
            ],
          ),
          Row(//ROW 2
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
          Row(// ROW 3
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
  }
}