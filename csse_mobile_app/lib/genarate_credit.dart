import 'package:flutter/material.dart';

class GenarateCredit extends StatefulWidget {
  const GenarateCredit({Key? key}) : super(key: key);

  @override
  State<GenarateCredit> createState() => _GenarateCreditState();
}

class _GenarateCreditState extends State<GenarateCredit> {
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
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Skyline',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                            TextSpan(
                                text: ' Constructions',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Ref Invoice No : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'HD1203',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Date : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '2022.05.27',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("H-beam (44mm)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                             ],
                           ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Reg Qty : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '05',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Cost : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Rs 25,000.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Reject Reason : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Items damaged',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          ElevatedButton(
                              onPressed: (){},
                              child: Text("Generate Credit"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                textStyle: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                            ),
                          ),
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
    ;
  }
}
