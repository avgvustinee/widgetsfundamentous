import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('First Page'),
        centerTitle: true,
        //leadingWidth: 100,
        //leading: Icon(Icons.settings),
        //elevation: 0,
        //toolbarHeight: 50,
        //toolbarOpacity: 0.5,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {

          },),
        actions: [
          Icon(Icons.menu),
          SizedBox(width: 10,),
          Icon(Icons.bathtub)
        ],

      ),
      body:Center(
            child: ElevatedButton(
              child: Text('Next page'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
              },

      ),),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,

      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}

