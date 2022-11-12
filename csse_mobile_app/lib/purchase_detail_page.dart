import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import './Components/purchase_detail.dart';


class PurchaseDetail extends StatefulWidget {
  String? name;
  String? price;

  PurchaseDetail({Key? key, this.name, this.price}) : super(key: key);

  @override
  State<PurchaseDetail> createState() => _PurchaseDetailState();
}

class Item {
  //modal class for Person object
  String comName, name, qty, price;
  Item(
      {required this.comName,
      required this.name,
      required this.qty,
      required this.price});
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

  List<Item> items = [];

  StreamController _controller = StreamController();

  int total=0;

  void addHandler(String comname, String itemname, int Price, int qty) {
    items.add(Item(
        comName: comname,
        name: itemname,
        qty: Price.toString(),
        price: qty.toString()));

    setState(() {
      total=(total+(Price*qty));
    });

    _controller.sink.add(Price*qty);
  }




  @override
  Widget build(BuildContext context) {
    TextEditingController qtycontroller1 = TextEditingController();
    TextEditingController qtycontroller2 = TextEditingController();
    TextEditingController qtycontroller3 = TextEditingController();
    TextEditingController qtycontroller4 = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.orange,
          title: Center(
            child: RichText(
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
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: size.height,
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
                  // SizedBox(
                  //   width:size.width/1.3,
                  //   child: DropdownSearch<String>(
                  //     popupProps: PopupProps.menu(
                  //       showSelectedItems: true,
                  //     ),
                  //     items: ["Brazil", "Italia", "Tunisia", 'Canada'],
                  //     dropdownDecoratorProps: DropDownDecoratorProps(
                  //       dropdownSearchDecoration: InputDecoration(
                  //         labelText: "Menu mode",
                  //         hintText: "country in menu mode",
                  //       ),
                  //     ),
                  //     onChanged: print,
                  //     selectedItem: "Brazil",
                  //   ),
                  // ),

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
                                    width: 3, color: Colors.redAccent),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showMaterialModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                  width: size.width,
                                  height: size.height / 1.2,
                                  color: Colors.white,
                                  child: ListView(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                color: Color(0xFFfcc68f)),
                                            width: size.width / 1.2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "CV (PVT) Ltd",
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        "Cement",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Rs3000.00",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                        width: 80.0,
                                                        height: 50.0,
                                                        child: TextField(
                                                          controller:
                                                              qtycontroller1,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText: 'Qty',
                                                          ),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () =>
                                                            addHandler(
                                                                "CN (PVT) Ltd",
                                                                "Cement",
                                                                int.parse(
                                                                    qtycontroller1
                                                                        .text),
                                                                3000),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors
                                                              .redAccent, // Background color
                                                        ),
                                                        child:
                                                            const Text('Add'),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                color: Color(0xFFfcc68f)),
                                            width: size.width / 1.2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "ZA (PVT) Ltd",
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        "Sand(1Kub)",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Rs12000.00",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                        width: 80.0,
                                                        height: 50.0,
                                                        child: TextField(
                                                          controller:
                                                              qtycontroller2,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText: 'Qty',
                                                          ),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () =>
                                                            addHandler(
                                                                "ZA (PVT) Ltd",
                                                                "Sand(1Kub)",
                                                                int.parse(
                                                                    qtycontroller2
                                                                        .text),
                                                                12000),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors
                                                              .redAccent, // Background color
                                                        ),
                                                        child:
                                                            const Text('Add'),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                color: Color(0xFFfcc68f)),
                                            width: size.width / 1.2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "CC (PVT) Ltd",
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        "Rocks(1Kub)",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Rs15000.00",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                        width: 80.0,
                                                        height: 50.0,
                                                        child: TextField(
                                                          controller:
                                                              qtycontroller3,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText: 'Qty',
                                                          ),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () =>
                                                            addHandler(
                                                                "CC (PVT) Ltd",
                                                                "Rocks(1Kub)",
                                                                int.parse(
                                                                    qtycontroller3
                                                                        .text),
                                                                15000),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors
                                                              .redAccent, // Background color
                                                        ),
                                                        child:
                                                            const Text('Add'),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                color: Color(0xFFfcc68f)),
                                            width: size.width / 1.2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "ABC (PVT) Ltd",
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        "Skim Coat",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Rs1000.00",
                                                        style: TextStyle(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 13.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                        width: 80.0,
                                                        height: 50.0,
                                                        child: TextField(
                                                          controller:
                                                              qtycontroller4,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText: 'Qty',
                                                          ),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () =>
                                                            addHandler(
                                                                "ABC (PVT) Ltd",
                                                                "Skim Coat",
                                                                int.parse(
                                                                    qtycontroller4
                                                                        .text),
                                                                1000),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors
                                                              .redAccent, // Background color
                                                        ),
                                                        child:
                                                            const Text('Add'),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            );
                          },
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            size: 24.0,
                            color: Colors.redAccent,
                          ),
                          label: const Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "${widget.name}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(height: 10),
                            Text("Budget: Rs ${widget.price}.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0)),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 20.0, right: 20.0, top: 10.0, bottom: 5.0),
                  //   child: purchaseDetail(),
                  // ),

                  Container(
                      width: size.width,
                      height: 480.0,
                      child: StreamBuilder(
                          stream: _controller.stream,
                          builder: (context, snapshot) {
                            return ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      items.removeAt(index);
                                      setState(() {
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          top: 10.0,
                                          bottom: 5.0),
                                      child: purchaseDetail(
                                          items[index].comName,
                                          items[index].name,
                                          items[index].qty,
                                          items[index].price),
                                    ),
                                  );
                                });
                          })),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Budget: Rs $total.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0)),
                        ElevatedButton(

                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Order Placed'),
                              content: const Text('Your order have been placed successfully!'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
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
