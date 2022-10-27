import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                child: Column(
                  children: const <Widget>[
                    Text("SettingsPage",style: TextStyle(fontSize: 30.0),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
