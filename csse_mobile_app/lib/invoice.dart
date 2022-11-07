import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.orange,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        "INVOICE",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Column(
                        children:  [
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "JN (Pvt) Ltd",
                              style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RichText(
                              text: const TextSpan(
                                text: 'Invoice No : ',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 15.0),
                                children: <TextSpan>[
                                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.0)),
                                ],
                              ),
                            )
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Date : ',
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(text: '2022.05.31', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.0)),
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          DataTable(
                            columns: const [
                              DataColumn(label: Text(
                                  'Item',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                              )),
                              DataColumn(label: Text(
                                  'Qty',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                              )),
                              DataColumn(label: Text(
                                  'Amount',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                              )),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('H-beam(44mm)')),
                                DataCell(Text('5')),
                                DataCell(Text('Rs 25,000.00')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('H-beam(44mm)')),
                                DataCell(Text('5')),
                                DataCell(Text('Rs 25,000.00')),
                              ]),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness:1,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Total : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Text("Rs 50,000.00 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
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
