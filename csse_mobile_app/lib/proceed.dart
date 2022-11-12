//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Proceed extends StatefulWidget {
  const Proceed({Key? key}) : super(key: key);

  @override
  State<Proceed> createState() => _ProceedState();
}

class _ProceedState extends State<Proceed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: PreferredSize(          // start header line
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



    )
    );

  }
}
