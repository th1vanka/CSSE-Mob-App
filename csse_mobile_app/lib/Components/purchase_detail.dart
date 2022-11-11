import 'package:flutter/material.dart';

Widget purchaseDetail(String Comname, String iname, String qty, String price) {
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

  void setValue(value) {}

  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      color: Color(0xFFfcc68f),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$Comname",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.delete,
                color: Colors.red,
              )
            ],
          ),
        ),
        Divider(
          height: 15.0,
          thickness: 1,
          endIndent: 0,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
          child: Column(
            children: [
              rowData(iname, qty, price),
            ],
          ),
        )
      ],
    ),
  );
}

Widget rowData(String iname, String qty, String price) {
  int total = int.parse(price) * int.parse(qty);

  return Center(
      child: Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$iname",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
            Text("Qty: $qty",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400))
          ],
        ),
        Column(
          children: [
            Text("Rs $total.00",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)),
          ],
        ),
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 50.0,
        //       height: 25.0,
        //       child: ElevatedButton(
        //         style: ButtonStyle(
        //             backgroundColor: MaterialStateProperty.all(Colors.white),
        //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //                 RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(10.0)))),
        //         onPressed: () {},
        //         child: Icon(Icons.remove, color: Colors.black87),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(5.0),
        //       child: Text("10"),
        //     ),
        //     SizedBox(
        //       width: 50.0,
        //       height: 25.0,
        //       child: ElevatedButton(
        //         style: ButtonStyle(
        //             backgroundColor: MaterialStateProperty.all(Colors.white),
        //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //                 RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(10.0)))),
        //         onPressed: () {},
        //         child: Icon(Icons.add, color: Colors.black87),
        //       ),
        //     ),
        //   ],
        // )
      ],
    ),
  ));
}
