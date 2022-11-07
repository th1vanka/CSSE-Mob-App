import 'package:flutter/material.dart';

Widget purchaseDetail() {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "JN (PVT) Ltd",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
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
            children: [rowData(), rowData(), rowData()],
          ),
        )
      ],
    ),
  );
}

Widget rowData() {
  return Center(
      child: Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text("H-beam(44mm)",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400)),
            Text("Amount: 56,000.00")
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 50.0,
              height: 25.0,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                onPressed: () {},
                child: Icon(Icons.remove, color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("10"),
            ),
            SizedBox(
              width: 50.0,
              height: 25.0,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                onPressed: () {},
                child: Icon(Icons.add, color: Colors.black87),
              ),
            ),
          ],
        )
      ],
    ),
  ));
}
