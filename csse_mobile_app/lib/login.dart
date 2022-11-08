import 'package:csse_mobile_app/registration.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.orange,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: Padding(
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
              const SizedBox(
                height: 60.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.asset('images/logo.png',
                    height: 150,
                    width:size.width/2,
                    fit:BoxFit.cover
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:EdgeInsets.only(left: 20.0, right: 20.0,top: size.width/5),
                child: Column(
                  children:[
                    const TextField(
                      decoration: InputDecoration(

                          prefixIcon: Icon(Icons.email_outlined,color: Colors.orange,),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 16.0,
                          ),
                          hintText: 'Enter Your Email...'),
                    ),
                    SizedBox(
                      height:size.width/20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password,color: Colors.orange,),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 16.0,
                          ),
                          hintText: 'Enter Your Password...'),
                    ),
                    SizedBox(
                      height:size.width/7,
                    ),

                    SizedBox(
                      width: size.width,
                      height: size.width/8,
                      child: ElevatedButton(
                        onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          primary: Colors.black87, // Background color
                        ),
                        child: const Text('Sign in',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(
                      height:6.0,
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Don't have an account ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.white)),
                         TextButton(
                           onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return Registration();
                            }));
                         },
                           child: Text("Create account ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.black87)),)
                       ],
                     )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
