import 'package:csse_mobile_app/genarate_credit.dart';
import 'package:csse_mobile_app/inquiry.dart';
import 'package:csse_mobile_app/inquiry_submit.dart';
import 'package:csse_mobile_app/invoice.dart';
import 'package:csse_mobile_app/order_list.dart';
import 'package:csse_mobile_app/place_order.dart';
import 'package:csse_mobile_app/purchase_detail_page.dart';
import '/notification.dart';
import '/settingsPage.dart';
import '/category.dart';
import '/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int _page = 0;

  final screens = [
    Home(),
    // CategoryPage(),
    // Invoice(),
    GenarateCredit(),
    PurchaseDetail(),
    // NotificationPage(),
    // Invoice(),
    // CategoryPage(),
    // SettingsPage(),
    PlaceOrder(),
    //Inquiry(),
    InquirySubmit(),
  ];

  @override
  Widget build(BuildContext context) {
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
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xFFffb566),
        height: 60.0,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.red,
          ),
          Icon(Icons.list_alt_outlined, size: 30, color: Colors.red),
          Icon(Icons.add_circle, size: 30, color: Colors.red),
          Icon(Icons.notifications, size: 30, color: Colors.red),
          Icon(Icons.settings, size: 30, color: Colors.red),
        ],
        index: 0,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
