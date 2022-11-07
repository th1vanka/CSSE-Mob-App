import 'package:flutter/material.dart';
import './Components/purchase_detail.dart';

class PurchaseDetail extends StatefulWidget {
  const PurchaseDetail({Key? key}) : super(key: key);

  @override
  State<PurchaseDetail> createState() => _PurchaseDetailState();
}

class _PurchaseDetailState extends State<PurchaseDetail> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black87;
  }
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(70.0),
      //   child: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.orange,
      //     title: Center(
      //       child: RichText(
      //         text: const TextSpan(
      //           children: <TextSpan>[
      //             TextSpan(
      //                 text: 'Skyline',
      //                 style: TextStyle(
      //                     fontSize: 25.0,
      //                     fontWeight: FontWeight.bold,
      //                     color: Colors.black87)),
      //             TextSpan(
      //                 text: ' Constructions',
      //                 style: TextStyle(
      //                     fontSize: 25.0, fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton.icon(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(
                                    width: 3, color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            size: 24.0,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Delete',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Column(
                          children: const [
                            Text(
                              "H-Town Building",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(height: 10),
                            Text("Budget: Rs 300000.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right:20.0,top: 10.0,bottom: 5.0),
                    child: purchaseDetail(),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right:20.0,top: 10.0,bottom: 5.0),
                    child: purchaseDetail(),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text("All")
                            ],
                          ),
                        ),
                        const Text("Budget: Rs 300000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0)),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent, // Background color
                          ),
                          child: const Text('Proceed'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
