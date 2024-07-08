import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Center(child: _stack(),),),
      ),
    );
  }

  Widget _stack() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.yellow,
      child: Stack(
        //alignment:Alignment.bottomLeft ,
        //alignment: Alignment.center,
        //alignment: Alignment.topCenter,
        //alignment: Alignment(1, 1),
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
}

}