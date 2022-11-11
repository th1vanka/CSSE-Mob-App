import 'package:csse_mobile_app/purchase_detail_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Component(
                          name: "H-Town Building",
                          address: "Kota Road, Colombo 12",
                          price: 200000),
                      Component(
                          name: "Hilton", address: "Colombo 12", price: 200000),
                      Component(
                          name: "Shangri-La Hotel",
                          address: "Colombo 2",
                          price: 200000),
                      Component(
                          name: "Avenra Garden Hotel",
                          address: "Katana Road, Negombo",
                          price: 200000),
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

class Component extends StatelessWidget {
  String? name;
  String? address;
  int? price;
  Component({Key? key, this.name, this.address, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return PurchaseDetail(name: "$name",price:"$price");
        }));
      },
      child: Container(
        margin: new EdgeInsets.only(top: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFfcc68f),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text("$address", style: TextStyle(fontSize: 15.0)),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Budget: Rs$price.00",
                    maxLines: 2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
