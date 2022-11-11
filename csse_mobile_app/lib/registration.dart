import 'package:csse_mobile_app/nav_bar.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.orange,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Skyline',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                        TextSpan(
                            text: ' Constructions',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.width / 7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.orange,
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                              ),
                              hintText: 'Enter Your Full Name...'),
                        ),
                        SizedBox(
                          height: size.width / 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.perm_identity,
                                color: Colors.orange,
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                              ),
                              hintText: 'Enter Your NIC...'),
                        ),
                        SizedBox(
                          height: size.width / 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.orange,
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                              ),
                              hintText: 'Enter Your Contact No...'),
                        ),
                        SizedBox(
                          height: size.width / 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.orange,
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                              ),
                              hintText: 'Enter Your Email...'),
                        ),
                        SizedBox(
                          height: size.width / 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.orange,
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                              ),
                              hintText: 'Enter Your Password...'),
                        ),
                        SizedBox(
                          height: size.width / 7,
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.width / 8,
                          child: ElevatedButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Registration Successfully!'),
                                content: const Text('You successfully registered!'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      int count = 0;
                                      Navigator.of(context)
                                          .popUntil((_) => count++ >= 1);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              primary: Colors.black87, // Background color
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
