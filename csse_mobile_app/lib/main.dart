import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSSE",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(
          title: const Text("CSSE"),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
                icon:const Icon(Icons.search)
            ),
            IconButton(
                onPressed: (){},
                icon:const Icon(Icons.person)
            ),
          ],
          bottom: const TabBar(
            tabs:[
              Text("Groups",style: TextStyle(fontSize: 19.0),),
              Tab(icon: Icon(Icons.car_crash),),
              Tab(icon: Icon(Icons.car_crash),),
              Tab(icon: Icon(Icons.car_crash),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
            tab4(),
          ],
        ),
      ),
    );
  }
}

Widget tab1(){
  return Container(
    color: Colors.pink,
     child:Center(
      child: Text("Tab one",style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.w900),),
     ),
  );
}

Widget tab2(){
  return Container(
      color: Colors.red,
      child: Center(
        child: Text("hi"),
      )
  );
}

Widget tab3(){
  return Container(
      color: Colors.blue,
      child: Center(
        child: Text("hi"),
      )
  );
}

Widget tab4(){
  return Container(
      color: Colors.green,
      child: Center(
        child: Text("hi"),
      )
  );
}

