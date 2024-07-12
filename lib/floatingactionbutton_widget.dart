import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label:'Home' ,
            icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label:'Setting' ,
            icon: Icon(Icons.settings)),
      ],),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          //FloatingActionButton.extended(onPressed: null, label: Text('Favorite'),icon: Icon(Icons.thumb_up),),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: FloatingActionButton(
            child: Icon(Icons.add), elevation: 2, //shape: RoundedRectangleBorder(),
            foregroundColor: Colors.black,
            backgroundColor: Colors.green[600],
            onPressed: () {  },),
        ) ,
      appBar: AppBar(backgroundColor: Colors.green,title: Text('Flutter Demo'),),
      body: Center(
        child: Text('Floating Action Button'),
      ),
    );
  }
}

